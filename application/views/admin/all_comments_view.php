<article class="module width_3_quarter">
	<header><h3 class="tabs_involved" align="center">Все комментарии</h3></header>

	<div class="tab_container">
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
					<a href="#"><img src="<?=base_url();?>assets/img/admin/icn_photo.png" alt="Просмотреть на странице"></a>
					<a href="#"><img src="<?=base_url();?>assets/img/admin/icn_edit.png" alt="Ответить"></a>
					<a href="#"><img src="<?=base_url();?>assets/img/admin/icn_trash.png" alt="Удалить"></a>
				</td> 
			</tr> 
			<?php endforeach;?>	
		</tbody> 
		</table>
		</div><!-- end of #tab1 -->
</article><!-- end of content manager article -->