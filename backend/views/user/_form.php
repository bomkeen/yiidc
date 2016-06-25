<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

use backend\models\Userrole;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\User */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="user-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'username')->textInput(['maxlength' => true]) ?>

    
    <?= $form->field($model, 'password_hash')->textInput(['maxlength' => true]) ?>

   
    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'status')->hiddenInput(['value'=>10])->label('') ?>

    <?php 
    $m = Userrole::find()->all();
    $items = ArrayHelper::map($m,'role', 'fullname');
    echo $form->field($model, 'role')->dropDownList($items) ;
    
    ?>

    <?= $form->field($model, 'created_at')->textInput(['value'=>date('YmdHis')]) ?>

    <?= $form->field($model, 'updated_at')->textInput(['value'=>date('YmdHis')]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'เพิ่ม' : 'แก้ไข', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
