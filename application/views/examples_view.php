
	<?php $this->load->helper('url'); ?>

	<table class="table table-striped table-bordered table-hover table-condensed">
		<tr>
		<th>Категория</th>
		<th>Фото до</th>
		<th>Фото после</th>
		<th>Описание работы</th>
		<th>Дополнительная информация</th>
		</tr>

<?php foreach ($examples as $item):?>
	<tr>

 	<td align="center">
 		<?=$this->config->item('categories')[$item['category']];?></td>                  
	<td align="center"><?=implode(', ', $item['photo_before'])?> </td>
	<td align="center"><?=implode(', ', $item['photo_after'])?> </td>
	<td align="center"><?=$item['about'];?></td>
	<td align="center"><?=$item['additionally'];?></td>

	</tr>
<?php endforeach;?>
