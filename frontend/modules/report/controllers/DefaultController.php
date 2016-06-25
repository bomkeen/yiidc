<?php

namespace frontend\modules\report\controllers;

use yii\web\Controller;
use yii\data\ArrayDataProvider;
use dosamigos\arrayquery\ArrayQuery;

/**
 * Default controller for the `report` module
 */
class DefaultController extends Controller
{
    /**
     * Renders the index view for the module
     * @return string
     */
    public $enableCsrfValidation = false;
    
    public function actionIndex()
    {
        $sql = "  SELECT p.CID,p.`NAME`,p.LNAME
,GROUP_CONCAT(c.CHRONIC) as CHRONIC
FROM  chronic c
INNER JOIN person p 
ON p.HOSPCODE = c.HOSPCODE AND p.PID = c.PID
GROUP BY c.HOSPCODE,c.PID   " ;
                
        $raw = \Yii::$app->db->createCommand($sql)->queryAll();
        
       
        
       
        
        if (!empty($raw[0])) {
            $cols = array_keys($raw[0]);
        }
        
        $dataProvider =new ArrayDataProvider([
            'allModels'=>$raw,
            'sort' => !empty($cols) ? [ 'attributes' => $cols] : FALSE,
            'pagination'=>[
                'pageSize'=>100
            ]
         
        ]);
        
        
        return $this->render('index',[
            'dataProvider'=>$dataProvider
        ]);
    }
}
