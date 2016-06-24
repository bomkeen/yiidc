<?php

namespace frontend\modules\import\controllers;

use yii\web\Controller;
use common\components\AppController;
use yii\web\UploadedFile;
use Yii;
use frontend\models\UploadFiles;
use yii\data\ActiveDataProvider;
use yii\helpers\FileHelper;

/**
 * Default controller for the `Import` module
 */
class DefaultController extends AppController {

    public $enableCsrfValidation = false;

    protected function rrmdir($dir) {
        if (is_dir($dir)) {
            $objects = scandir($dir);
            foreach ($objects as $object) {
                if ($object != "." && $object != "..") {
                    if (filetype($dir . "/" . $object) == "dir")
                        $this->rrmdir($dir . "/" . $object);
                    else
                        unlink($dir . "/" . $object);
                }
            }
            reset($objects);
            rmdir($dir);
        }
    }



    protected function load_data($txtfile, $table) {
        $transaction = \Yii::$app->db->beginTransaction();
        try {

            $sql = "LOAD DATA LOCAL INFILE '$txtfile'";
            $sql.= " REPLACE INTO TABLE $table";
            $sql.= " FIELDS TERMINATED BY '|'  LINES TERMINATED BY '\r\n' IGNORE 1 LINES";
            $raw = \Yii::$app->db->createCommand($sql)->execute();

            $transaction->commit();
        } catch (Exception $e) {
            $transaction->rollBack();
        }
    }

    protected function unzip($file) {

        $zip = new \ZipArchive();

        $path_zip = \Yii::getAlias('@frontend/web') . DIRECTORY_SEPARATOR . "upload/";
        $path_unzip = \Yii::getAlias('@frontend/web') . DIRECTORY_SEPARATOR . "unzip/";

        $file_zip = $path_zip . '/' . $file;
        if ($zip->open($file_zip) === TRUE) {
            $path_unzip_ = $path_unzip . '/' . basename($file_zip);
            $zip->extractTo($path_unzip_);
            $zip->close();
        }
    }

    public function actionLoadZip($file) {
        $path_zip = \Yii::getAlias('@frontend/web') . DIRECTORY_SEPARATOR . "upload/";
        if(!file_exists($path_zip.$file)){
            return "ไม่พบไฟล์";
        }        
        $path_unzip = \Yii::getAlias('@frontend/web') . DIRECTORY_SEPARATOR . "unzip/";

        $this->unzip($file);
        $path_unzip_ = $path_unzip . $file;
        $txtFiles = FileHelper::findFiles($path_unzip_, [
                    'only' => ['*.txt', '*.TXT'],
                    'recursive' => TRUE,
        ]);
        foreach ($txtFiles as $f) {
            $info = pathinfo($f);
            $table = strtolower($info['filename']);
            $f = str_replace("\\", "/", $f);
            $this->load_data($f, $table);            
        }
        $this->rrmdir($path_unzip_);
        unlink($path_zip.$file);
        $this->redirect(['/import']);
    }

    public function actionIndex() {
        $dir_upload = \Yii::getAlias('@frontend/web') . DIRECTORY_SEPARATOR . "upload";
        if (!is_dir($dir_upload)) {
            mkdir($dir_upload);
        }
        $model = new UploadFiles();
        $success = "";

        if (Yii::$app->request->isPost) {
            $uFile = UploadedFile::getInstance($model, 'file');
            if ($uFile->saveAs($dir_upload . DIRECTORY_SEPARATOR . $uFile)) {
                $model->filename = $uFile->baseName . "." . $uFile->extension;
                $model->size = $uFile->size;
                $model->dupdate = date("Y-m-d H:i:s");
                $model->type = $uFile->extension;
                //$model->status='';
                $model->save();
                $success = "success";
            }
        }

        $dataProvider = new ActiveDataProvider([
            'query' => UploadFiles::find(),
            'pagination' => [
                'pageSize' => 20,
            ],
        ]);
        return $this->render('index', [
                    'model' => $model,
                    'dataProvider' => $dataProvider,
                    'sucess' => $success
        ]);
    }

}
