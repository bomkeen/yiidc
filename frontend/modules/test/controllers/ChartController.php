<?php

namespace frontend\modules\test\controllers;

use yii\web\Controller;
use yii\data\ArrayDataProvider;
use dosamigos\arrayquery\ArrayQuery;

class ChartController extends Controller {

    public function actionTest1() {
        $sql = " select * from temp_chart ";
        $raw = \Yii::$app->db->createCommand($sql)->queryAll();
        
        
        $dataProvider = new ArrayDataProvider([
            'allModels' => $raw
        ]);

        return $this->render('test1', [
                    'dataProvider' => $dataProvider,
                    'raw' => $raw
        ]);
    }

}
