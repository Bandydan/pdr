<article class="module">
	<header><h3 class="tabs_involved" align="center">Все пользователи</h3></header>

	<div class="tab_container">
		<table class="" cellspacing="0"> 
		<thead> 
			<tr> 
				<th></th> 
				<th>Логин</th> 
				<th>Имя и Фамилия</th> 
				<th>Пол</th> 
				<th>День рождения</th>
				<th>Телефон</th>
				<th>E-mail</th>
				<th>Авто</th>
				<th>Права доступа</th>
				<th>Дата создания</th>
				<th>Аватар</th> 
				<th>Включен</th>
				<th>Действия</th>
			</tr> 
		</thead> 
		<tbody> 
			<?php foreach ($users as $user):?> 
			<tr align='center'> 
				<td><input type="checkbox"></td> 
				<td><?=$user['login']?></td> 
				<td><?=$user['name'].' '.$user['surname']?></td>
				<td><?=$user['sex']?></td>
				<td><?=$user['birthsday']?></td>
				<td><?=$user['tel']?></td>
				<td><?=$user['email']?></td>
				<td><?=$user['manufacture'].', '.$user['model']?></td>
				<td><?=$user['user_rights']?></td>
				<td><?=$user['user_created']?></td> 
				<td><?=$user['avatar']?></td> 
				<td><?=$user['user_enabled']?></td>
				<td>
					<a href="#"><img type="image" src="<?=base_url();?>assets/img/admin/icn_jump_back.png" alt="Отключить" /></a>
					<a href="#"><img type="image" src="<?=base_url();?>assets/img/admin/icn_edit.png" alt="Редактировать" /></a>
					<a href="#"><img src="<?=base_url();?>assets/img/admin/icn_trash.png" alt="Удалить" /></a>
				</td> 
			</tr> 
			<?php endforeach;?>	
		</tbody> 
		</table>
		</div><!-- end of #tab1 -->
</article><!-- end of content manager article -->