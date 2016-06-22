<?php

namespace common\components;

use Yii;

class AppController extends \yii\web\Controller {

    public function init() {
        parent::init();
    }

    public function Hello() {
        return "Hello Yii2";
    }
    protected function getRole(){
        if (!\Yii::$app->user->isGuest) {
             return \Yii::$app->user->identity->role;
         }  else {
             return 0;
         }
    }

    public function allowRole($role=[]){
        
        $r = $this->getRole();
         
        if(!in_array($r,$role)){
            throw  new \yii\web\ConflictHttpException("ไม่ได้รับอนุญาต");
        }
         
        
    }

}
