<?php

namespace frontend\controllers;
use yii\web\Response;
use dosamigos\arrayquery\ArrayQuery;

class TestController extends \yii\web\Controller
{
    public $enableCsrfValidation = false;
    protected function json_output(){
        \Yii::$app->response->format = Response::FORMAT_JSON;
    }
    protected function call($store_name, $arg = NULL) {
        $sql = "";
        if ($arg != NULL) {
            $sql = "call " . $store_name . "(" . $arg . ");";
        } else {
            $sql = "call " . $store_name . "();";
        }
        return $this->query_all($sql);
    }
    protected function exec_sql($sql) {
        $affect_row = \Yii::$app->db->createCommand($sql)->execute();
        return $affect_row;
    }
    protected function query_all($sql) {
        $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        return $rawData;
    }
    
    public function actionIndex()
    {
        return $this->render('index');
    }
    public function actionGetUser(){
        $this->json_output();
        $sql = "select * from user";        
        $raw = $this->query_all($sql);
        $q = new ArrayQuery($raw);
        $model = $q->addCondition('username'," like a")->find();
        return $model;
        
    }

}
