<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php echo '<meta http-equiv="Refresh" content="2; url=http://pdr/admin">';?>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h2>Привет, <?= $this->session->userdata('login'); ?>!</h2>
			</div>
			<p>Вы успешно авторизованы!</p>
		</div>
	</div><!-- .row -->
</div><!-- .container -->