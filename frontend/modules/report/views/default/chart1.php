<?php
use miloschuman\highcharts\Highcharts;

?>

<div style="display: none">
    
    <?php
    echo Highcharts::widget([
        'scripts' => [
            'highcharts-more', // enables supplementary chart types (gauge, arearange, columnrange, etc.)
            //'modules/exporting', // adds Exporting button/menu to chart
            //'themes/grid',       // applies global 'grid' theme to all charts
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
