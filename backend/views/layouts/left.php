<?php
    use yii\helpers\Html;
    use common\models\User;
    use yii\helpers\Url;
?>

<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?php echo Url::to('@web/images/logo.png')?>" class="img" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p style="font-size:14px;font-family: Bookman old style;"><b><br><small>Kota Pariaman</small></b></p>
                <a href="#"><i class="fa fa-circle text-success"></i><?php echo Yii::$app->user->identity->username; ?></a>
            </div>
        </div>
        <!-- /.search form -->
        <?php if (Yii::$app->user->identity->level == 1) : ?>
        <?= dmstr\widgets\Menu::widget(
        [
            'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
            'items' => [
                ['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
                [
                    'label' => 'Beranda',
                    'icon' => 'home',
                    'url' => ['/'],
                ],

                ['label' => 'Data RTP', 'icon' => 'paper-plane', 'url' => ['/rtp'],],
                ['label' => 'Perikanan Tangkap', 'icon' => 'paper-plane', 'url' => ['/perikanan-tangkap'],],
                ['label' => 'Armada Tangkap', 'icon' => 'paper-plane', 'url' => ['/armada-penangkapan'],],
                ['label' => 'Kelompok Usaha Bersama', 'icon' => 'paper-plane', 'url' => ['/kub'],],
                ['label' => 'Perikanan Budidaya', 'icon' => 'paper-plane', 'url' => ['/perikanan-budidaya'],],
                ['label' => 'Profil Kelompok', 'icon' => 'paper-plane', 'url' => ['/profil-kelompok'],],
                ['label' => 'RTP Pokdakan', 'icon' => 'paper-plane', 'url' => ['/rtp-pokdakan'],],
                ['label' => 'UPR Pokdakan', 'icon' => 'paper-plane', 'url' => ['/upr-pokdakan'],],
                ['label' => 'Poklahsar', 'icon' => 'paper-plane', 'url' => ['/poklahsar'],],
                ['label' => 'Pedagang Ikan', 'icon' => 'paper-plane', 'url' => ['/pedagang-ikan'],],
                ['label' => 'Pokmaswas', 'icon' => 'paper-plane', 'url' => ['/pokmaswas'],],
                
                ['label' => 'Setting Akun', 'icon' => 'gears', 'url' => ['/user'],],

                ],
            ]
        ) ?>

        <?php elseif (Yii::$app->user->identity->level == 2) : ?>
        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
                'items' => [
                    ['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
                    [
                        'label' => 'Beranda',
                        'icon' => 'home',
                        'url' => ['/'],
                    ],

                ['label' => 'Destinasi', 'icon' => 'file-text-o', 'url' => ['/destinasi-wisata'],],

                ],

            ]
        ) ?>
        <?php elseif (Yii::$app->user->identity->level == 3) : ?>
        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
                'items' => [
                    ['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
                    [
                        'label' => 'Beranda',
                        'icon' => 'home',
                        'url' => ['/'],
                    ],

                ['label' => 'Destinasi', 'icon' => 'file-text-o', 'url' => ['/destinasi-wisata'],],


                ],
            ]
        ) ?>
        <?php elseif (Yii::$app->user->identity->level == 4) : ?>
        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
                'items' => [
                    ['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
                    [
                        'label' => 'Beranda',
                        'icon' => 'home',
                        'url' => ['/'],
                    ],

              
                ],
            ]
        ) ?>
        <?php endif; ?>

    </section>

</aside>

    </section>

</aside>
