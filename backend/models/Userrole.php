<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "userrole".
 *
 * @property integer $role
 * @property string $rolename
 * @property string $note1
 * @property string $note2
 * @property string $note3
 */
class Userrole extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
   
    public static function tableName()
    {
        return 'userrole';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['role'], 'required'],
            [['role'], 'integer'],
            [['rolename', 'note1', 'note2', 'note3'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'role' => 'Role',
            'rolename' => 'Rolename',
            'note1' => 'Note1',
            'note2' => 'Note2',
            'note3' => 'Note3',
        ];
    }
    
    public function getFullname(){
        return $this->role."-".$this->rolename;
    }
}
