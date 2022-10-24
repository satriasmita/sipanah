<?php
use yii\helpers\Url;
use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\ArrayHelper;
use kartik\date\DatePicker;
use backend\models\Pekerjaan;
use backend\models\User;
use backend\models\DestinasiWisata;
use backend\models\Kuliner;
use backend\models\Pegawai;
use yii\helpers\StringHelper;
use yii\widgets\LinkPager;

/* @var this yii\web\View */

$this->title = 'Selamat Datang di SIPERI';

$tombol = '{view}';
?>
<style type="text/css">
    marquee p
{
    white-space:nowrap;
}
table, th, td {
   border: 1px solid;
}
</style>
