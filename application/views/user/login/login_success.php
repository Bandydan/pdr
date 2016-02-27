<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php echo '<meta http-equiv="Refresh" content="2"; url="<?=base_url();?>">';?>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="page-header">
                <h2>Привет, <?= $this->session->userdata('login'); ?>!</h2>
            </div>
            <p>Вы успешно авторизованы и будете перенаправлены на главную страницу.</p>
        </div>
    </div><!-- .row -->
</div><!-- .container -->