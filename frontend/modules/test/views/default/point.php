<?php
$this->title = "Mapbox";
$this->registerCssFile('https://api.mapbox.com/mapbox.js/v2.4.0/mapbox.css', ['async' => false, 'defer' => true]);
$this->registerJsFile('https://api.mapbox.com/mapbox.js/v2.4.0/mapbox.js', ['position' => $this::POS_HEAD]);
?>


<div class="panel panel-success">       
    <div class="panel-body">
        <div id="map" style="width: 100%;height: 460px"></div>   
    </div>
    <div class="panel-footer" id="info"></div>
</div>


<?php
$js = <<<JS
    L.mapbox.accessToken = 'pk.eyJ1IjoidGVobm5uIiwiYSI6ImNpZzF4bHV4NDE0dTZ1M200YWxweHR0ZzcifQ.lpRRelYpT0ucv1NN08KUWQ';
    var map = L.mapbox.map('map', 'mapbox.streets').setView([16, 100], 6);
    
     $.getJSON('./gis/point.json',function(data){
       var house_layer=L.geoJson(data,{
           onEachFeature:function(feature,layer){
                if(feature.properties.TAM_CODE<=5){
                    layer.setIcon(L.mapbox.marker.icon({'marker-color': '#ff3300'})); 
                }else if(feature.properties.TAM_CODE>=10){
                    layer.setIcon(L.mapbox.marker.icon({'marker-color': '#3366ff'}));
                }else{
                    layer.setIcon(L.mapbox.marker.icon({'marker-color': '#40ff00'}));
                }
                layer.bindPopup(feature.properties.TAM_NAMT);
           }
       }).addTo(map);
        map.fitBounds(house_layer.getBounds());
    });
JS;
$this->registerJs($js);
?>



