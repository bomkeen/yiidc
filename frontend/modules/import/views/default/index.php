<?php

use yii\widgets\Pjax;
use yii\bootstrap\ActiveForm;
use yii\grid\GridView;

?>
<div class="Import-default-index">
    
<?php
$form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]);

echo $form->field($model,'file')->fileInput();
?>
<button>Submit</button>

<?php
$form->end();
?>
<hr>
<?php
echo GridView::widget([
    'dataProvider'=>$dataProvider
]);

?>
    

</div>
