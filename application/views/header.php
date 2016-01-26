<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- <link href="assets/css/bootstrap.css" rel="stylesheet"> -->
        <!-- <link href="assets/css/bootstrap-responsive.css" rel="stylesheet"> -->
        <link rel="stylesheet" href="/assets/css/main_hader.css">
        <link rel="stylesheet" href="/assets/css/main.css">
        <link rel="stylesheet" href="/assets/css/main_footer.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"> 
        <!--<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>-->
        <style type="text/css">
        </style>

        <head>
    </head>

<body>

    <div class="container">
        <div class="row" id="header">
            <div class="col-md-2 icon">
                <img class="" src="/assets/img/logo.jpg" alt="Basket" width="100" height="100"/>
            </div>

            <div class="col-md-6">

            <!-- Начало блока со слайдшоу -->
                <div id="carousel-example-generic" class="carousel slide bs-slider" data-ride="carousel">

            <!-- Индикаторы слайдов -->
            <!-- Количество пунктов должно совпадать с количеством слайдов, в данном примере их 5-->
            <!-- Класс active присваивается тому слайду, с котрого начинается слайдшоу -->
            <!-- Значение data-target у пунктов должно соответствовать идентификатору(id) блока со слайдшоу(первая строчка) -->

                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                    </ol>

                    <!-- Блок в котором находятся слайды -->

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                    <!-- Слайд 1 -->
                        <div class="item active">
                            <!-- Изображение слайда -->
                            <!-- В поле src нужно написать адрес картинки -->
                            <!-- В поле alt нужно написать название картинки -->
                            <img class="img-thumbnail im" src="/img/example/after/0_0.jpg" alt="Photo Avto" width="199px" height="150px"/>
                        </div>

                        <div class="item">
                            <img class="img-thumbnail im" src="/img/example/after/1_0.jpg" alt="Photo Avto" width="199px" height="150px"/>
                        </div>

                        <div class="item">
                            <img class="img-thumbnail im" src="/img/example/after/2_0.jpg" alt="Photo Avto" width="199px" height="150px"/>
                        </div>

                        <div class="item">
                            <img class="img-thumbnail im" src="/img/example/after/3_0.jpg" alt="Photo Avto" width="199px" height="150px"/>
                        </div>

                        <div class="item">
                            <img class="img-thumbnail im" src="/img/example/after/4_0.jpg" alt="Photo Avto" width="199px" height="150px"/>
                        </div>

                    </div>

            <!-- Кнопки управления слайдщоу (стрелки влево и вправо) -->
            <!-- Значение href у ссылки должно соответствовать идентификатору(id) блока со слайдшоу(первая строчка) -->
            
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

                <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

            </div>

            <div class="col-md-4">
                <button type="button" class="btn btn-success"><a href="<?=base_url();?>login">Войти</a></button>
                <button type="button" class="btn btn-success"><a href="<?=base_url();?>register">Регистрация</a></button>
                <button type="button" class="">
                <img class="" src="/assets/img/basket_2.png" alt="Basket" width="64px" height="70px"/>
                </button>
            </div>

        </div>
