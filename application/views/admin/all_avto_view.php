<article class="module_avto width_3_quarter">
	<header><h3 class="tabs_involved" align="center">Каталог автомобилей</h3></header>

	<div class="tab_container">
		<table class="tablesorter" align="center" cellspacing="0"> 
		<thead> 
			<tr> 
				<th>Производитель</th> 
				<th>Модель</th> 
				<th>Удалить</th>
			</tr> 
		</thead> 
		<tbody> 
			<?php foreach ($cars as $avto): ;?> 
			<tr> 
				<td><?=$avto['manufacture']?></td> 
				<td><?=$avto['model']?></td>
				<td><a href="<?=base_url();?>admin/delete_item/<?=$avto['id'].'%3D'.'cars_model'?>"><img src="<?=base_url();?>assets/img/admin/icn_trash.png" alt="Удалить"></a></td>
			</tr> 
			<?php endforeach;?>	
		</tbody> 
		</table>
		
		<div>
			<?php echo form_open('/admin/add_car'); ?>

			<input type="text" id="mark" name="mark" placeholder="Производитель авто">

            <input type="text" id="model" name="model" placeholder="Модель">

            <?php echo form_submit('add_car', 'Добавить') ;?>
       
        </form>
        </div>
	</div><!-- end of #tab1 -->
</article><!-- end of content manager article -->