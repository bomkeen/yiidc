<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Userrole */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="userrole-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'role')->textInput() ?>

    <?= $form->field($model, 'rolename')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'note1')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'note2')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'note3')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
