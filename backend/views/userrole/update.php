<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Userrole */

$this->title = 'Update Userrole: ' . $model->role;
$this->params['breadcrumbs'][] = ['label' => 'Userroles', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->role, 'url' => ['view', 'id' => $model->role]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="userrole-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
