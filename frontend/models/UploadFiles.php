<?php

namespace frontend\models;

use Yii;

class UploadFiles extends \yii\db\ActiveRecord {

    /**
     * @inheritdoc
     */
    public $file;

    public static function tableName() {
        return 'upload_files';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['size'], 'integer'],
            [['dupdate'], 'safe'],
            [
                ['file'], 
                'file', 
                'maxSize' => 20*1024*1024, 
                'tooBig' => 'จำกัดขนาดไฟล์ 20 MB',
                'extensions'=>'zip,ZIP'
            ],
            [['filename','status'], 'string', 'max' => 255],
            [['type',], 'string', 'max' => 64],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'id' => 'ID',
            'filename' => 'Filename',
            'size' => 'Size(Byte)',
            'type' => 'Type',
            'dupdate' => 'Dupdate',
            'file' => 'กรุณาเลือกไฟล์',
            'status'=>'สถานะ'
        ];
    }

    

}
