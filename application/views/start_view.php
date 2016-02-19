<?php $this->load->helper('url'); ?>

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

                    <!-- <img src="img/example/after/1_0.jpg" class="img-responsive">  -->
                    <!-- для примера, в будующем нужно уточнить какое фото будет выводиться -->
                    <img src="<?=$item['photo_after'][0]?>" class="img-responsive">
                    <h3><?php $arr=$this->config->item("categories");?>
                        <?=$arr[$item['category']];?></h3>
                        <p> <?=$item['about'];?> </p>
                <?php endforeach;?>
            </div>
        </div>
    </div>
</section>