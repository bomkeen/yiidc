<?php

namespace backend\models;

use Yii;


/**
 * This is the model class for table "role".
 *
 * @property integer $role
 * @property string $role_name
 * @property string $note1
 * @property string $note2
 * @property string $note3
 */
class Role extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'role';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['role'], 'required'],
            [['role'], 'integer'],
            [['role_name', 'note1', 'note2', 'note3'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'role' => 'Role',
            'role_name' => 'Role Name',
            'note1' => 'Note1',
            'note2' => 'Note2',
            'note3' => 'Note3',
        ];
    }
    public function getRoleFullName(){
        return $this->role.'-'.$this->role_name;
    }
    
}
