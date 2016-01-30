
	<?php $this->load->helper('url'); ?>

<div class="row" id="content">
    <div class="col-md-2 left_sidebar"></div>
    <div class="col-md-10 sidebar">

	<table id="main-table" class="table table-striped table-bordered table-hover table-condensed">
		<thead>
            <tr>
        		<th>Категория</th>
        		<th>Фото до</th>
        		<th>Фото после</th>
        		<th>Описание работы</th>
        		<th>Дополнительная информация</th>
    		</tr>
        </thead>

        <tbody>
            <?php foreach ($examples as $item):?>
                	<tr>

                 	<td align="center">
                 		<?=$this->config->item('categories'),$item['category'];?></td>                  
                	<td align="center"><?=implode(', ', $item['photo_before'])?> </td>
                	<td align="center"><?=implode(', ', $item['photo_after'])?> </td>
                	<td align="center"><?=$item['about'];?></td>
                	<td align="center"><?=$item['additionally'];?></td>

                	</tr>
                <?php endforeach;?>
        </tbody>
    </table>
    </div>
</div>
