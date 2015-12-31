<!DOCTYPE html>
<html>
<head>
	<title>Примеры работ</title>
</head>
<body>
	<?php $this->load->helper('url'); ?>

	<table border="2">
		<tr>
		<th>Категория</th>
		<th>Фото до</th>
		<th>Фото после</th>
		<th>Описание работы</th>
		<th>Дополнительная информация</th>
		</tr>

<?php foreach ($examples as $item):?>
	<tr>

 	<td align="center"><?=$item['category_name'];?></td>                  
	<td align="center"><?echo '<img src ='.base_url().'img/example/before/'.$item['photo_before'];?>
	width="150" height="150" alt="Teacher_photo"> </td>
	<td align="center"><?echo '<img src ='.base_url().'img/example/after/'.$item['photo_after'];?>
	width="150" height="150" alt="Teacher_photo"> </td>
	<td align="center"><?=$item['about'];?></td>
	<td align="center"><?=$item['additionally'];?></td>

	</tr>
<?php endforeach;?>

</body>
</html>
