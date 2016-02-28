<article class="module width_3_quarter">
	<header><h3 class="tabs_involved" align="center">Все страницы</h3>	</header>

	<div class="tab_container">
		<table class="tablesorter" cellspacing="0"> 
		<thead> 
			<tr> 
				<th></th> 
				<th>Категория</th> 
				<th>Заголовок</th> 
				<th>Дата создания</th> 
				<th>Действия</th> 
			</tr> 
		</thead> 
		<tbody>
			<?php foreach ($articles as $article):?> 
			<tr> 
				<td><input type="checkbox"></td> 
				<td><?=$article['category']?></td>
				<td><?=$article['title']?></td> 
				<td><?=$article['content_created']?></td> 
				<td>
					<a href=""><img src="<?=base_url();?>assets/img/admin/icn_photo.png" title="Просмотреть"></a>
					<a href="<?=base_url();?>admin/edit_article/<?=$article['id'];?>"><img src="<?=base_url();?>assets/img/admin/icn_edit.png" title="Редактировать"></a>
					<a href=""><img src="<?=base_url();?>assets/img/admin/icn_trash.png" title="Удалить"></a>
				</td> 
			</tr>
			<?php endforeach;?>	  
		</tbody> 
		</table>
		</div><!-- end of #tab1 -->
</article><!-- end of content manager article -->