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
<?php
        $data = [];        
        foreach ($raw as $value) {
            $data[] = [
                'name'=>$value['hos'],
                'data'=>[$value['total']*1]
            ];            
        }
        $data = json_encode($data);      
    


?>

<div id="container">
    
</div>

<?php
$js =<<<JS
        
   $(function () {
    $('#container').highcharts({
        chart:{
            type:'column'
        },
        title: {
            text: 'Monthly Average Temperature',
            x: -20 //center
        },
        
        yAxis: {
            title: {
                text: 'Temperature (°C)'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        tooltip: {
            valueSuffix: '°C'
        },
        
        series: $data
    });
});
        
JS;

$this->registerJs($js);

?>
