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

 	<td align="center"><?=$item['category'];?></td>                  
	<td align="center"><?=$item['photo_before']?> </td>
	<td align="center"><?=$item['photo_after']?> </td>
	<td align="center"><?=$item['about'];?></td>
	<td align="center"><?=$item['additionally'];?></td>

	</tr>
<?php endforeach;?>

</body>
</html>
