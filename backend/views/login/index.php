<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\LoginSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Login';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="login-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Login', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'login_id',
            'id_user',
            'id_KAB',
            'id_KEC',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
