<?php

use yii\helpers\StringHelper;
use yii\helpers\Url;
use yii\base\DynamicModel;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */

$this->title = 'Selamat Datang di Sistem Informasi Pariwisata Kota Pariaman';
?>
<?php
        \Yii::$app->view->registerMetaTag([
                'property' => 'og:title',
                'content' => 'Website Sistem Informasi Pariwisata Kota Pariaman'
            ]);
          \Yii::$app->view->registerMetaTag([
                  'property' => 'og:description',
                  'content' => 'Selamat Datang di Website SIPAMAN Kota Pariaman, Novi Musnaldi, Novi, Informasi Publik, Diskominfo, Kominfo, Kota Pariaman'
              ]);
          \Yii::$app->view->registerMetaTag([
                  'property' => 'og:url',
                  'content' => 'http://sipaman.pariamankota.go.id/site/index'
              ]);
          \Yii::$app->view->registerMetaTag([
                  'property' => 'og:image',
                  'content' => 'http://ppid.pariamankota.go.id/images/logo-ppid.png'
              ]);
          \Yii::$app->view->registerMetaTag([
                  'property' => 'og:image:width',
                  'content' => '200'
              ]);
          \Yii::$app->view->registerMetaTag([
                  'property' => 'og:image:height',
                  'content' => '200'
              ]);
        ?>
<?php 

    // $model = new DynamicModel(['judul, kategori, tahun, tentang']);
    // $model->addRule('judul, kategori, tahun, tentang', 'safe');

?>
<style type="text/css">
    @media only screen and (max-width: 767px) {
        #berita {
            display: none;
        }
        #media-berita {
            display: none;
        }
    }
</style>

    <div id="blog" class="section">
        <!-- Container -->
        <div class="container" style="width: 80%">

            <!-- Row -->
            <div class="row">

                <!-- Main -->
               
                </main>
                <!-- /Main -->

            </div>
            <!-- /Row -->

        </div>
        <!-- /Container -->

    </div>