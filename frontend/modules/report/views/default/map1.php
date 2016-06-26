<?php

$this->registerCssFile("https://api.mapbox.com/mapbox.js/v2.4.0/mapbox.css");
$this->registerJsFile("https://api.mapbox.com/mapbox.js/v2.4.0/mapbox.js", ['position'=>yii\web\View::POS_HEAD] );
?>
<div id="map" style="height: 600px;width: 100%">
    
</div>
<?php
$js=<<<JS
   

L.mapbox.accessToken = 'pk.eyJ1IjoidGVobm5uIiwiYSI6ImNpZzF4bHV4NDE0dTZ1M200YWxweHR0ZzcifQ.lpRRelYpT0ucv1NN08KUWQ';

L.mapbox.map('map', 'mapbox.streets');
        
JS;

$this->registerJs($js);

?>

