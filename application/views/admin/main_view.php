<section id="main" class="column">	
	<h4 class="alert_info">Добро пожаловать в Административную панель. Сюда будем выводить сообщения об ошибках.</h4>
	
	<article class="module width_full">
		<header><h3>Статистика посещения</h3></header>
		<div class="module_content">
			<article class="stats_graph">
				<img src="http://chart.apis.google.com/chart?chxr=0,0,3000&chxt=y&chs=520x140&cht=lc&chco=76A4FB,80C65A&chd=s:Tdjpsvyvttmiihgmnrst,OTbdcfhhggcTUTTUadfk&chls=2|2&chma=40,20,20,30" width="520" height="140" alt="" />
			</article>
			
			<article class="stats_overview">
				<div class="overview_today">
					<p class="overview_day">Сегодня</p>
					<p class="overview_count">1,876</p>
					<p class="overview_type">Переходов</p>
					<p class="overview_count">2,103</p>
					<p class="overview_type">Просмотров</p>
				</div>
				<div class="overview_previous">
					<p class="overview_day">Вчера</p>
					<p class="overview_count">1,646</p>
					<p class="overview_type">Переходов</p>
					<p class="overview_count">2,054</p>
					<p class="overview_type">Просмотров</p>
				</div>
			</article>
			<div class="clear"></div>
		</div>
	</article><!-- end of stats article -->
	
	<article class="module width_3_quarter">
	<header><h3 class="tabs_involved">Запросы на оценку и комментарии</h3>
		<ul class="tabs">
			<li><a href="#tab1">Запросы</a></li>
			<li><a href="#tab2">Комментарии</a></li>
		</ul>
	</header>

	<div class="tab_container">
		<div id="tab1" class="tab_content">
		<table class="tablesorter" cellspacing="0"> 
		<thead> 
			<tr> 
				<th></th> 
				<th>Сообщение</th> 
				<th>Пользователь</th> 
				<th>Дата создания</th> 
				<th>Действия</th> 
			</tr> 
		</thead> 
		<tbody>
			<?php foreach ($requests as $request):?> 
			<tr> 
				<td><input type="checkbox"></td> 
				<td><?=$request['order_text']?></td> 
				<td><?=$request['login']?></td> 
				<td><?=$request['order_created']?></td> 
				<td>
					<a href="#"><img src="<?=base_url();?>assets/img/admin/icn_photo.png" alt="Просмотр фото"></a>
					<a href="#"><img src="<?=base_url();?>assets/img/admin/icn_edit.png" alt="Ответить"></a>
					<a href="<?=base_url();?>admin/delete_request/<?=$request['id']?>"><img src="<?=base_url();?>assets/img/admin/icn_trash.png" alt="Удалить"></a>
				</td> 
			</tr>
			<?php endforeach;?>   
		</tbody> 
		</table>
		</div><!-- end of #tab1 -->
		
		<div id="tab2" class="tab_content">
		<table class="tablesorter" cellspacing="0"> 
		<thead> 
			<tr> 
				<th></th>
				<th>Наша работа</th> 
				<th>Комментарий</th> 
				<th>Пользователь</th> 
				<th>Дата создания</th> 
				<th>Действия</th> 
			</tr> 
		</thead> 
		<tbody> 
			<?php foreach ($comments as $comment):?> 
			<tr> 
				<td><input type="checkbox"></td>
				<td><a href="#">Полировка Lexus RX350</a></td> 
				<td><?=$comment['comment_text']?></td> 
				<td><?=$comment['login']?></td> 
				<td><?=$comment['comment_created']?></td> 
				<td>
					<a href="#"><img src="<?=base_url();?>assets/img/admin/icn_photo.png" alt="Просмотр фото"></a>
					<a href="#"><img src="<?=base_url();?>assets/img/admin/icn_edit.png" alt="Ответить"></a>
					<a href="<?=base_url();?>admin/delete_comment/<?=$comment['id']?>"><img src="<?=base_url();?>assets/img/admin/icn_trash.png" alt="Удалить"></a>
				</td> 
			</tr>
			<?php endforeach;?> 
		</tbody> 
		</table>

		</div><!-- end of #tab2 -->
		
	</div><!-- end of .tab_container -->
	
	</article><!-- end of content manager article -->
	
	<article class="module width_quarter">
		<header><h3>Заказы</h3></header>
		<div class="message_list">
			<div class="module_content">
				<div class="message">
				<p><strong>Номер заказа:</strong> Коврики салона</p>
				<p><strong>Дата:</strong> 21-01-2016</p>
				<p><strong>Товар:</strong> Коврики салона</p>
				<p><strong>Стоимость, грн.:</strong> 400</p>
				<p><strong>Пользователь:</strong></p>
				<p><strong>Просмотреть</strong><input type="image" src="<?=base_url();?>assets/img/admin/icn_tags.png" title="Просмотреть"></p>
				</div>
				<div class="message">
				<p><strong>Номер заказа:</strong> Коврики салона</p>
				<p><strong>Дата:</strong> 21-01-2016</p>
				<p><strong>Товар:</strong> Коврики салона</p>
				<p><strong>Стоимость, грн.:</strong> 400</p>
				<p><strong>Пользователь:</strong></p>
				<input type="image" src="<?=base_url();?>assets/img/admin/icn_tags.png" title="Просмотреть">
				</div>
				<div class="message">
				<p><strong>Номер заказа:</strong> Коврики салона</p>
				<p><strong>Дата:</strong> 21-01-2016</p>
				<p><strong>Товар:</strong> Коврики салона</p>
				<p><strong>Стоимость, грн.:</strong> 400</p>
				<p><strong>Пользователь:</strong></p>
				<input type="image" src="<?=base_url();?>assets/img/admin/icn_tags.png" title="Просмотреть">
				</div>
				<div class="message">
				<p><strong>Номер заказа:</strong> Коврики салона</p>
				<p><strong>Дата:</strong> 21-01-2016</p>
				<p><strong>Товар:</strong> Коврики салона</p>
				<p><strong>Стоимость, грн.:</strong> 400</p>
				<p><strong>Пользователь:</strong></p>
				<input type="image" src="<?=base_url();?>assets/img/admin/icn_tags.png" title="Просмотреть">
				</div>
			</div>
		</div>
	</article><!-- end of messages article -->

	<div class="spacer">
	</div>
</section>