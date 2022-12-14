<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;
use yii\base\DynamicModel;
use yii\data\Pagination;
/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'error'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout', 'index', 'ultah', 'cetak', 'skak', 'skawh', 'skawm', 'skb', 'skbeasiswa', 'skbk', 'skbm', 'skbpr', 'skbse', 'skd', 'skgh', 'skh', 'skj', 'skk', 'skkb', 'skmd', 'skmdv', 'skn', 'skp', 'skpbb', 'skpindah', 'sksk', 'skst', 'sktditemukan', 'sktmi', 'sktmii', 'sktmp', 'sktt', 'sku'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    // public function actionIndex()
    // {
        
    //     $searchWisata = new DestinasiWisataSearch();
    //     $dataWisata = $searchWisata->search(Yii::$app->request->queryParams);

    //     $searchKuliner = new KulinerSearch();
    //     $dataKuliner = $searchKuliner->search(Yii::$app->request->queryParams);

    //     return $this->render('index', [
    //         'searchWisata' => $searchWisata,
    //         'dataWisata' => $dataWisata,
    //         'searchKuliner' => $searchKuliner,
    //         'dataKuliner' => $dataKuliner,
           
            
    //     ]);
    // }

    public function actionIndex()
    {
        return $this->render('index');
    }

   
    
    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post())) {
            if ($model->login()) {                
            return $this->goBack();
        } else {
            Yii::$app->session->setFlash('failure', "Maaf...<br>User Name atau Password tidak benar.<br>Silahkan coba kembali.");
        }            
        return $this->refresh();
        } else {
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }
}
