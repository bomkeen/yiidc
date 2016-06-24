<?php

namespace frontend\modules\import\controllers;

use yii\web\Controller;
use common\components\AppController;

/**
 * Default controller for the `Import` module
 */
class DefaultController extends AppController
{
    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }
    public function actionUpload(){
        
    }
    public function actionImport(){
        return "import";
    }
}
