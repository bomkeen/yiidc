<?php

$this->registerCssFile("https://api.mapbox.com/mapbox.js/v2.4.0/mapbox.css");
$this->registerJsFile("https://api.mapbox.com/mapbox.js/v2.4.0/mapbox.js", ['position'=>yii\web\View::POS_HEAD] );
?>
<div id="map" style="height: 600px;width: 100%">
    
</div>
<?php

$icon1 = "#40ff00";
$icon2 = "#3366ff";
$icon3 = "#ff3300";

$js=<<<JS
 
L.mapbox.accessToken = 'pk.eyJ1IjoidGVobm5uIiwiYSI6ImNpZzF4bHV4NDE0dTZ1M200YWxweHR0ZzcifQ.lpRRelYpT0ucv1NN08KUWQ';

var map = L.mapbox.map('map', 'mapbox.streets');

map.setView([16,100],6);
var point_layer;
        
$.getJSON('./gis/point.json',function(data){
    
       point_layer = L.geoJson(data,{
           onEachFeature:function(feature,layer){
           
             if(feature.properties.TAM_CODE<=5){
                    layer.setIcon(L.mapbox.marker.icon({'marker-color': '$icon1'})); 
                }else if(feature.properties.TAM_CODE>=10){
                    layer.setIcon(L.mapbox.marker.icon({'marker-color': '$icon2'}));
                }else{
                    layer.setIcon(L.mapbox.marker.icon({'marker-color': '$icon3'}));
                }
            
            layer.bindPopup(feature.properties.TAM_CODE +feature.properties.TAM_NAMT);
           }
       
       }).addTo(map);
       map.fitBounds(point_layer.getBounds());
});

       
        
        
JS;

$this->registerJs($js);

?>

