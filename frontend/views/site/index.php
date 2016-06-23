<?php

/* @var $this yii\web\View */

$this->title = 'YiiDC';
use yii\helpers\Html;
?>
<div class="site-index">

    <div class="jumbotron">
        <h1>Congratulations!</h1>

        <p class="lead">You have successfully created your Yii-powered application.</p>        
        <p>
            <?=Html::a('Get started with Map', ['/test/default/index'],['class'=>'btn btn-lg btn-primary'])?>
            <?=Html::a('Get started with Chart', ['/test/default/chart'],['class'=>'btn btn-lg btn-success'])?>
        </p>
    </div>

    <div class="body-content">

       

    </div>
</div>
