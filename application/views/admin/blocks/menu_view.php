<aside id="sidebar" class="column">
	<form class="quick_search">
		<input type="text" value="Быстрый поиск" onfocus="if(!this._haschanged){this.value=''};this._haschanged=true;">
	</form>
	<hr/>
	<h3>Статистика</h3>
	<ul class="toggle">
		<li class="icn_categories"><a href="#">Посещения страниц сайта</a></li>
		<li class="icn_categories"><a href="#">Заказов</a></li>
		<li class="icn_categories"><a href="#">Покупок</a></li>
		<li class="icn_categories"><a href="#">Комментариев</a></li>
	</ul>
	<h3>Заказы и запросы</h3>
	<ul class="toggle">
		<li class="icn_profile"><a href="<?=base_url();?>admin/show_requests">Запросы на оценку вмятин</a></li>
		<li class="icn_profile"><a href="#">Заказы интернет-магазина</a></li>
		
		<!--<li class="icn_categories"><a href="#">Меню</a></li>
		<li class="icn_tags"><a href="#">Tags</a></li>-->
	</ul>
	<h3>Страницы</h3>
	<ul class="toggle">
		<li class="icn_new_article"><a href="<?=base_url();?>admin/add_article">Добавить</a></li>
		<li class="icn_edit_article"><a href="<?=base_url();?>admin/show_articles">Просмотреть все</a></li>
		<!--<li class="icn_delete"><a href="#">Удалить</a></li>
		<li class="icn_categories"><a href="#">Меню</a></li>
		<li class="icn_tags"><a href="#">Tags</a></li>-->
	</ul>
	<h3>Медиафайлы</h3>
	<ul class="toggle">
		<!--<li class="icn_folder"><a href="#">Файловый менеджер</a></li>-->
		<li class="icn_photo"><a href="#">Галлерея</a></li>
		<!--<li class="icn_audio"><a href="#">Аудио</a></li>-->
		<!--<li class="icn_video"><a href="#">Видео</a></li>-->
		<li class="icn_photo"><a href="<?=base_url();?>admin/show_avtos">Каталог автомобилей</a></li>
	</ul>
	<h3>Пользователи</h3>
	<ul class="toggle">
		<li class="icn_add_user"><a href="<?=base_url();?>admin/add_user">Добавить</a></li>
		<li class="icn_view_users"><a href="<?=base_url();?>admin/show_users">Просмотреть всех</a></li>
		<!--<li class="icn_delete"><a href="#">Удалить</a></li>-->
	</ul>
	<h3>Комментарии</h3>
	<ul class="toggle">
		<li class="icn_tags"><a href="<?=base_url();?>admin/show_comments">Просмотреть все</a></li>
		<li class="icn_delete"><a href="#">Удалить</a></li>
	</ul>
	<h3>Настройки</h3>
	<ul class="toggle">
		<li class="icn_categories"><a href="#">Меню</a></li>
		<li class="icn_settings"><a href="#">Валюта</a></li>
		<li class="icn_security"><a href="#">Язык</a></li>
		<li class="icn_profile"><a href="#">Настройки профиля</a></li>
		<li class="icn_jump_back"><a href="<?=base_url();?>admin/logout">Выход</a></li>
	</ul>
	
	<footer>
		<hr />
		<p><strong>Copyright &copy; Little Dream Team | 2016</strong></p>
	</footer>
</aside><!-- end of sidebar -->