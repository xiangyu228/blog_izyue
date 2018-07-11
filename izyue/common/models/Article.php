<?php

namespace common\models;

use izyue\admin\models\Images;
use Yii;

/**
 * This is the model class for table "article".
 *
 * @property int $id
 * @property string $title 文章标题
 * @property string $image_id 文章缩略图id
 * @property string $description 文章描述
 * @property string $body
 * @property int $author_id 作者id
 * @property int $create_time 添加时间
 * @property int $update_time 更新时间
 * @property int $click 点击次数
 * @property int $article_status 文章状态
 *
 * @property Admin $author
 * @property Articlestatus $articleStatus
 */
class Article extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'article';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['body'], 'string'],
            [['title','author_id','body'], 'required'],
            [['author_id', 'create_time', 'update_time', 'click', 'article_status'], 'integer'],
            [['title', 'image_id', 'description'], 'string', 'max' => 255],
            [['author_id'], 'exist', 'skipOnError' => true, 'targetClass' => AdminModel::className(), 'targetAttribute' => ['author_id' => 'id']],
            [['article_status'], 'exist', 'skipOnError' => true, 'targetClass' => Articlestatus::className(), 'targetAttribute' => ['article_status' => 'id']],
        ];
    }
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => '文章标题',
            'image_id' => '缩略图',
            'description' => '文章描述',
            'body' => '文章内容',
            'author_id' => '作者',
            'create_time' => '发布时间',
            'update_time' => '更新时间',
            'click' => '点击',
            'article_status' => '文章状态',
            'author_name' =>'作者'
        ];
    }
    //插入或更新之前操作
    public function beforeSave($insert){
        if(parent::beforeSave($insert)){
            if($insert){
                $this->create_time = time();
                $this->update_time = time();
                $this->click = 0;
            } else {
                $this->update_time = time();
            }
            return true;
        }  else {
            return false;
        }
    }
    //审核文章
    public function check(){
        $this->article_status = 2;
        if($this->save()){
            return true;
        } else {
            return false;
        }
    }
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAuthor()
    {
        return $this->hasOne(AdminModel::className(), ['id' => 'author_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getArticleStatus()
    {
        return $this->hasOne(Articlestatus::className(), ['id' => 'article_status']);
    }

    public function getImageinfo(){
         return $this->hasOne(Images::className(),['id' => 'image_id']);
        //return 123;
    }
}
