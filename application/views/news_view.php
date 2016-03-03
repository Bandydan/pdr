<?php $this->load->helper('url'); ?>

<section class="firstSection">
    <div class="container">
        <div class="row">
             <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sidebar">
                <nav class="Nav">
                    <h3>Все новости</h3>
                    <?php foreach ($newsbar as $item):?>
                    <ul class="SiteNav">
                        <li>                               
                            <a href="<?=base_url();?>news/index/<?=$item['id'];?>"><h4><?=$item['title']?></h4></a>
                        </li>
                    </ul>
                    <?php endforeach;?>
                </nav>
                <div class="advertising">
                </div>
            </div>
            <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9 main">
       
                <?php foreach ($news as $item):?>   
                <h3><?=$item['title']?></h3>
                <?=$item['content_text']?> 
                <?php endforeach;?>   
            
            </div> <!--  main  -->
        </div>
    </div>
</section>