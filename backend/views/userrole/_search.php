<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\UserroleSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="userrole-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'role') ?>

    <?= $form->field($model, 'rolename') ?>

    <?= $form->field($model, 'note1') ?>

    <?= $form->field($model, 'note2') ?>

    <?= $form->field($model, 'note3') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
