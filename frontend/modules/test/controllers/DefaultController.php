<?php

namespace frontend\modules\test\controllers;

use yii\web\Controller;
use common\components\AppController;

/**
 * Default controller for the `test` module
 */
class DefaultController extends AppController
{
    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        //$this->permitRole([3]);
        return $this->render('index');
    }
    public function actionChart(){
        return $this->render('chart');
    }
    public function actionPoint(){
        return $this->render('point');
    }
    public function actionPolygon(){
        return $this->render('polygon');
    }
    public function actionMulti(){
        return $this->render('multi');
    }
    
    
    public function actionRisk(){
        $sql = " select * from temp_gis";
        $raw = \Yii::$app->db->createCommand($sql)->queryAll();
        $geojson =[];
        foreach ($raw as $value) {
            $geojson[]=[
                'type'=>'Feature',
                'properties'=>[
                    'name'=>$value['note'],
                    'risk'=>$value['risk']
                ],
                'geometry'=>[
                    'type'=>'Point',
                    'coordinates'=>[$value['lng']*1,$value['lat']*1],                    
                ]
            ];
        }
        $geojson = json_encode($geojson);
        return $this->render('risk',[
            'geojson'=>$geojson
        ]);
    }
    
}
