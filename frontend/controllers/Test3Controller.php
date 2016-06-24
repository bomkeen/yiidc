<?php

namespace frontend\controllers;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\components\AccessRule;

class Test3Controller extends \yii\web\Controller
{
    
    public function behaviors(){
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
            'access'=>[
                'class'=>AccessControl::className(),
                'only'=> ['index'],
                'ruleConfig'=>[
                    'class'=>AccessRule::className()
                ],
                'rules'=>[
                    [
                        'actions'=>['index'],
                        'allow'=> true,
                        'roles'=>[2,3]
                    ],
                      
                ]
            ]           
        ];
    }
    public function actionIndex()
    {
        return $this->render('index');
    }
    

}
