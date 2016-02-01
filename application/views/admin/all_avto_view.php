<article class="module_avto width_3_quarter">
	<header><h3 class="tabs_involved" align="center">Каталог автомобилей</h3></header>

	<div class="tab_container">
		<table class="tablesorter" align="center" cellspacing="0"> 
		<thead> 
			<tr> 
				<th>Производитель</th> 
				<th>Модель</th> 
				<th>Год выпуска</th> 
			</tr> 
		</thead> 
		<tbody> 
			<?php foreach ($avtos as $avto):?> 
			<tr> 
				<td><?=$avto['manufacture']?></td> 
				<td><?=$avto['model']?></td>
				<td><?=$avto['year']?></td>
			</tr> 
			<?php endforeach;?>	
		</tbody> 
		</table>
		
		<div>
			<?php echo form_open('/admin/add_avto'); ?>

			<input type="text" id="manufacture" name="manufacture" placeholder="Производитель авто">

            <input type="text" id="model" name="model" placeholder="Модель">

            <select id="year" name="year">
            	<option>--</option>
                <? for ($i=1970; $i <= date('Y'); $i++) { ?>
                <option value="<?= $i; ?>"><?= $i ?></option>
                <? } ?>
            </select>
            <?php echo form_submit('add_new_avto', 'Добавить');?>
       
        </form>
        </div>
	</div><!-- end of #tab1 -->
</article><!-- end of content manager article -->