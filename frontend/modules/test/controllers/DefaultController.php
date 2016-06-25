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
}
