<?php

namespace common\models\Search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Article;

/**
 * ArticleSearch represents the model behind the search form of `common\models\Article`.
 */
class ArticleSearch extends Article
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            //[['id', 'author_id',  'update_time', 'click', 'article_status'], 'integer'],
            [['id', 'author_id','article_status'], 'integer'],
            [['create_time'], 'string'],
            [['title',  'description', 'body','author_name'], 'safe'],
        ];
    }
    public function attributes(){
        return array_merge(parent::attributes(),['author_name']);
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Article::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pageSize' => 20,
            ],
            'sort' => [
                /*'defaultOrder'=>[
                    'id'=> SORT_DESC
                ],*/
               /* 'attributes'=>[
                    'id',
                    'title'
                ]*/
            ]
        ]);

        /*echo '<pre>';
        print_r($dataProvider);
        die;*/

        /*if(!empty($params['ArticleSearch']['create_time'])){

            $search_time = $params['ArticleSearch']['create_time'];
            $expolde_search_time = explode(',',$search_time);
            $params['ArticleSearch']['create_time'] = $expolde_search_time[0];
        }*/

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
             $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'author_id' => $this->author_id,
            //'create_time' => $this->create_time,
            //'update_time' => $this->update_time,
            'click' => $this->click,
            'article_status' => $this->article_status,
        ]);

        $query->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'image_id', $this->image_id])
            ->andFilterWhere(['like', 'description', $this->description])
            ->andFilterWhere(['like', 'body', $this->body]);

        //增加文章发布时间的筛选条件
        if(!empty($this->create_time)){
            $search_time = $this->create_time;
            $expolde_search_time = explode(',',$search_time);
            $query->andFilterWhere(['between','create_time',strtotime($expolde_search_time[0]),strtotime($expolde_search_time[1])]);
        }

        $query->leftJoin('admin','admin.id = article.author_id');
        $query->andFilterWhere(['like','admin.username',$this->author_name]);
        //$query->andFilterWhere(['like','admin.username',$this->author_name])->where('admin.status=:status')->addParams([':status'=>10]);
        //$query->andFilterWhere(['=','admin.status',10]);

        //增加 作者名字可以点击排序
        $dataProvider->sort->attributes['author_name'] = [
            'asc' => ['admin.username' => SORT_ASC],
            'desc' => ['admin.username' => SORT_DESC],
        ];

        $dataProvider->sort->defaultOrder = [
            'article_status' => SORT_ASC,
            'id' => SORT_DESC
        ];

        return $dataProvider;
    }
}
