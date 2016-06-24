<?php

namespace frontend\modules\import\controllers;

use yii\web\Controller;
use common\components\AppController;
use yii\web\UploadedFile;
use Yii;
use frontend\models\UploadFiles;
use yii\data\ActiveDataProvider;

/**
 * Default controller for the `Import` module
 */
class DefaultController extends AppController {

    public $enableCsrfValidation = false;

    protected function import() {
        return "import";
    }

    public function actionIndex() {

        $model = new UploadFiles();
        $success = "";

        if (Yii::$app->request->isPost) {
            $uFile = UploadedFile::getInstance($model, 'file');
            if ($uFile->saveAs('./upload' . DIRECTORY_SEPARATOR . $uFile)) {
                $model->filename = $uFile->baseName .".".$uFile->extension;
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
                    'dataProvider'=>$dataProvider,
                    'sucess'=>$success
        ]);
    }

}
