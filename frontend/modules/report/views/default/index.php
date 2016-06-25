<?php
use kartik\grid\GridView;
use yii\widgets\ActiveForm;
?>

<?php



?>


<?php
echo GridView::widget([
    'dataProvider'=>$dataProvider,
    'panel'=>[
        'before'=>''
    ],
    'export' => [
        'showConfirmAlert' => false,
        'target' => GridView::TARGET_BLANK
    ],
]);

?>
