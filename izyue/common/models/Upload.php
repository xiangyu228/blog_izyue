<?php
/**
 * Created by PhpStorm.
 * User: 井翔宇
 * Date: 2018/3/12
 * Time: 14:09
 */

namespace common\models;

use Yii;
use yii\base\Model;

/**
 * 公共上传方法
 */
class Upload extends Model
{
    public $litpic;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['litpic'], 'file', 'skipOnEmpty' => true, 'extensions' => 'png, jpg'],
        ];
    }

    /*
     * 上传图片方法
     * */
    public function upload(){
        $root_path = '../uplpads/';
        $time = date("Y-m-d" , time());
        if ($this->validate()) {
            $path = $root_path . $time;
            if(!file_exists($path)){
                mkdir($path,0777,true);
            } else {
                $litpic_name = $this->litpic->name;
                $save_path   = $path . '/' . $litpic_name;
                $this->litpic->saveAs($save_path);
                return $save_path;
            }
        } else {
            return false;
        }
    }
}
