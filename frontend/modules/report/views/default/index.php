<?php
use kartik\grid\GridView;
use yii\widgets\ActiveForm;
use yii\widgets\Pjax;
use yii\helpers\Html;

$this->params['breadcrumbs'][] = ['label' => 'หน้าหลัก', 'url' => ['/site/index']];
$this->params['breadcrumbs'][] = 'ผลงานคัดกรองรายหน่วยบริการ';
?>

<?php Pjax::begin(['id' => 'my-pjax', 'timeout' => 10000]) ?>

<div class="_search" style="margin-bottom: 5px">

    <?php $form = ActiveForm::begin([
        'action' => ['/report/default/index'],
        'method' => 'get',
        'options' => ['data-pjax' => true ]
    ]); ?>
    <div class="input-group">
      <?= Html::textInput('find',$find,['placeholder'=>"ค้นหา..","class"=>"form-control"]) ?>
      <span class="input-group-btn">
        <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i> ค้นหา
        </button>
       
      </span>
    </div>
    <?php ActiveForm::end(); ?>

</div>


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
    'columns'=>[
        [
            'attribute'=>'CID',
            'format'=>'raw',
            'value'=>function($data){
                return  Html::a($data['CID'],['/site/index','cid'=>$data['CID']]);
            }
        ],
        'NAME',
        'LNAME',
        
    ]
    
]);

?>
<?php Pjax::end() ?>
