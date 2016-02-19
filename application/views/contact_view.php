<?php $this->load->helper('url'); ?>

<section class="firstSection">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sidebar">
                            <nav class="secNav">
                                <ul class="secSiteNav">
                                    <li>
                                        <a href="<?=base_url();?>examples/index/1">Удаление вмятин без покраски</a>
                                    </li>
                                    <li>
                                        <a href="<?=base_url();?>examples/index/2">Полировка авто</a>
                                    </li>
                                    <li>
                                        <a href="<?=base_url();?>examples/index/3">Бронирование фар</a>
                                    </li>
                                    <li>
                                        <a href="<?=base_url();?>examples/index/4">Химчистка салона</a>
                                    </li>
                                    <li>
                                        <a href="<?=base_url();?>examples/index/5">Ремонт стекол</a>
                                    </li>
                                    <li>
                                        <a href="<?=base_url();?>examples/index/6">Антикорозийная обработка</a>
                                    </li>
                                    <li>
                                        <a href="<?=base_url();?>examples/index/7">Покраска авто</a>
                                    </li>
                                </ul>
                            </nav>
                            <div class="advertising">
                            </div>
                        </div>
                        <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9 main">

                            <div id="map"></div>
                            <link rel="stylesheet" type="text/css" href="<?=base_url();?>/assets/css/contact.css">                         
                            <script type="text/javascript" src="assets/js/jquery-1.11.3.js"></script>
                            <script src="<?=base_url();?>assets/js/map_script.js"></script>
                            <script src="https://maps.googleapis.com/maps/api/js?&callback=initialize"></script>

                            <br>
                            <div>
                                <p><b>Наши контакты:</b></p>
                                <p> Украина, город Харьков, Пллощадь Конституции, 18</p>
                                <p><b>Телефоны:</b></p>
                                <p> - </p>
                                <p> - </p>
                                <p><b>Время работы:</b></p>
                                <p>ПН-ПТ: 10:00 - 19:00</p>
                                <p>СБ - ВС: 10:00 - 14:00</p>
                            </div>

                        </div>
                    </div>
                </div>
            </section>