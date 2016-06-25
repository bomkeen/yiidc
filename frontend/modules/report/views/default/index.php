<?php
use kartik\grid\GridView;
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
