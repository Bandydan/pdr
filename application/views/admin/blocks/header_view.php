<header id="header">
	<hgroup>
		<h1 class="site_title"><a href="<?=base_url();?>index.php/admin">PDR Admin</a></h1>
		<h2 class="section_title">Основная панель</h2>
		<div class="btn_view_site">
			<a href="http://pdr/index.php/" target="_blank" title="Перейти на сайт">На сайт</a>
		</div>
	</hgroup>
</header> <!-- end of header bar -->
	
<section id="secondary_bar">
	<div class="user">
		<p><?=$_SESSION['login'];?> (<a href="#">Сообщения</a>)</p>
		<a class="logout_user" href="<?=base_url();?>index.php/admin/logout" title="Завершить сеанс">Выйти</a>
	</div>
	<div class="breadcrumbs_container">
		<article class="breadcrumbs"><a href="<?=base_url();?>index.php/admin">PDR Admin</a> 
		<div class="breadcrumb_divider"></div> <a class="current">Основная панель</a></article>
	</div>
</section><!-- end of secondary bar -->