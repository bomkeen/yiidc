<?php

namespace frontend\modules\report\controllers;

use yii\web\Controller;
use yii\data\ArrayDataProvider;
use dosamigos\arrayquery\ArrayQuery;

/**
 * Default controller for the `report` module
 */
class DefaultController extends Controller {

    /**
     * Renders the index view for the module
     * @return string
     */
    public $enableCsrfValidation = false;

    public function actionIndex($find = NULL) {
        $sql = "  SELECT p.CID,p.`NAME`,p.LNAME
,GROUP_CONCAT(c.CHRONIC) as CHRONIC
FROM  chronic c
INNER JOIN person p 
ON p.HOSPCODE = c.HOSPCODE AND p.PID = c.PID
GROUP BY c.HOSPCODE,c.PID   ";

        $raw = \Yii::$app->db->createCommand($sql)->queryAll();
        /* เพิ่มเข้ามาจากวันแรก */
        $query = new ArrayQuery($raw);
        $model = $query->find();
        if (!empty($find)) {
            $model = $query
                    ->addCondition("CID", "like $find", "or")
                    ->addCondition("NAME", "like $find", "or")
                    ->addCondition("LNAME", "like $find")
                    ->find();
        }

        /* เพิ่มเข้ามาจากวันแรก */

        if (!empty($raw[0])) {
            $cols = array_keys($raw[0]);
        }

        $dataProvider = new ArrayDataProvider([
            'allModels' => $model, // เปลี่ยนเป็น model
            'sort' => !empty($cols) ? [ 'attributes' => $cols] : FALSE,
            'pagination' => [
                'pageSize' => 15
            ]
        ]);


        return $this->render('index', [
                    'dataProvider' => $dataProvider,
                    'find' => $find
        ]);
    }
    
    public function actionChart1(){
        $sql = " select * from temp_chart ";
        $raw = \Yii::$app->db->createCommand($sql)->queryAll();
        
        return $this->render('chart1',[
            'raw'=>$raw
        ]);
    }
    
    public function actionMap1(){
        return $this->render('map1');
    }
}
