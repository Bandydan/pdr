<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php echo '<meta http-equiv="Refresh" content="5; url=http://pdr/admin">';?>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h2>Привет, <?= $_SESSION['login']; ?>!</h2>
			</div>
			<p>Вы успешно авторизованы!</p>
		</div>
	</div><!-- .row -->
</div><!-- .container -->