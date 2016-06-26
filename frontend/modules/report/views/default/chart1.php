<?php
use miloschuman\highcharts\Highcharts;

?>

<div style="display: none">
    
    <?php
    echo Highcharts::widget([
        'scripts' => [
            'highcharts-more', 
            //'modules/exporting', 
            //'themes/grid',       
            //'highcharts-3d',
            'modules/drilldown'
        ]
    ]);
    ?>
    
</div>

<div id="container">
    
</div>

<?php
$js =<<<JS
        
   alert();
        
JS;

$this->registerJs($js);

?>
