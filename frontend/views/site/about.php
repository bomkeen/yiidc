<?php
/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'About';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <?php
    if (!\Yii::$app->user->isGuest) {
        echo \Yii::$app->user->identity->role;
    }  else {
        echo "ไม่ได้ล้อกอิน";
    }
    ?>
</div>
