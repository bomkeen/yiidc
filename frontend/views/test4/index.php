<?php
use yii\helpers\Html;

$this->title ="test4 title";
?>

<div class="alert alert-danger">
    <h1>ทดสอบ</h1>
    
</div>

<?php
echo Html::a('link1',['/site/about']);
?>

<?php
echo Html::a('link2',['/site/index']);
?>

<?php
echo Html::a('link3',['/test/default/index']);
?>

<?php
echo Html::a('link4',['/site/test2','param1'=>'กกกกก','param2'=>'ขขขขข']);
?>