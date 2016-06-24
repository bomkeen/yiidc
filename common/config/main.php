<?php
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
    ],
    'modules' => [
        'test' => [
            'class' => 'frontend\modules\test\Test',
        ],
        'import' => [
            'class' => 'frontend\modules\import\Import',
        ],
    ],
    'controllerMap' => [
        'file' => 'mdm\\upload\\FileController', // use to show or download file
    ],
];
