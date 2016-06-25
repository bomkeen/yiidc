<?php

namespace frontend\modules\report\controllers;

use yii\web\Controller;
use yii\data\ArrayDataProvider;

/**
 * Default controller for the `report` module
 */
class DefaultController extends Controller
{
    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        $sql = "  SELECT p.CID,p.`NAME`,p.LNAME
,GROUP_CONCAT(c.CHRONIC) as CHRONIC
FROM  chronic c
INNER JOIN person p 
ON p.HOSPCODE = c.HOSPCODE AND p.PID = c.PID
GROUP BY c.HOSPCODE,c.PID   " ;
        
        $raw = \Yii::$app->db->createCommand($sql)->queryAll();
        
        $dataProvider =new ArrayDataProvider([
            'allModels'=>$raw,
            'pagination'=>[
                'pageSize'=>100
            ]
         
        ]);
        
        
        return $this->render('index',[
            'dataProvider'=>$dataProvider
        ]);
    }
}
