<?php $this->load->helper('url'); ?>

<script src="<?=base_url();?>/assets/js/common.js"></script>

<section class="firstSection">
    <div class="container">
        <div class="row">
            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sidebar">
                <?=$nav;?>
                <div class="advertising">
                </div>
            </div>
            <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9 main">
        <?php foreach ($examples as $item):?>
                <div class="LineImg"><img src='../assets/img/line.png' width='100%' height='25' /></div><br/>
                <div class="wrapSlider">
                    <div class="slider">

                        <div>
                            <img src="<?=$item['photo_before'][0]?>" class="img-responsive">
                        </div>

                        <div>
                            <img src="<?=$item['photo_after'][0]?>" class="img-responsive">
                        </div>

                        <div>
                            <img src="<?=$item['photo_before'][1]?>" class="img-responsive">
                        </div>
                        <div>
                            <img src="<?=$item['photo_after'][1]?>" class="img-responsive">
                        </div>
                    </div>
                </div>
                <h3><?php $arr=$this->config->item("categories");?>
                        <?=$arr[$item['category']];?></h3>
                <p><?=$item['about'];?></p>
        <?php endforeach;?>


            </div> <!--  main  -->
        </div>
    </div>
</section>

<script type="text/javascript" src="<?=base_url();?>/assets/js/script.js"></script>
