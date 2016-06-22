<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\Role;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\User */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="user-form">

    <?php $form = ActiveForm::begin(); ?>

    <?php echo $form->field($model, 'username')->textInput(['maxlength' => true]) ?>

    <?php echo $form->field($model, 'auth_key')->textInput(['maxlength' => true]) ?>

    <?php echo $form->field($model, 'password_hash')->textInput(['maxlength' => true]) ?>

    <?php echo $form->field($model, 'password_reset_token')->textInput(['maxlength' => true]) ?>

    <?php echo $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?php echo $form->field($model, 'status')->textInput() ?>

    <?php 
    $raw = Role::find()->all();
    $items= ArrayHelper::map($raw, 'role', '_role_full_name');
    echo $form->field($model, 'role')->dropDownList($items);
    ?>

    <?php echo $form->field($model, 'created_at')->textInput(['value'=>date('Y-m-d H:i:s')]) ?>

    <?php echo $form->field($model, 'updated_at')->textInput(['value'=>date('Y-m-d H:i:s')]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
