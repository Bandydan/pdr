<!--<div class="clear"></div>-->
<section id="main" class="column">		
		<article class="module width_full">
			<header><h3>Добавить пример выполненной работы</h3></header>
				<?php echo validation_errors(); ?>
				<?= form_open('admin/add_example') ?>
					<div class="module_content">
						<fieldset style="width:32%; float:left; margin-right: 3%;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Категория</label>
							<select name="category" style="width:92%;" rows="12">
								<option disabled selected hidden>--</option>
								<?php $arr=$this->config->item("categories"); 
								foreach ($arr as $key => $value):?>
								<option value="<?= $key;?>"><?= $value;?></option>
								<?php endforeach;?> 
							</select>
						</fieldset>

						<fieldset style="width:99%; float:left; margin-right: 3%;">
							<label>Описание</label>
							<textarea name="text" value="<?= set_value('text'); ?>" style="width:92%;" rows="12"></textarea>
						</fieldset>

						<fieldset style="width:32%; float:left; margin-right: 1%;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Фото до...</label>
							<input name="foto_before" value="<?= set_value('foto_before'); ?>" type="text" style="width:92%;">
						</fieldset>

						<fieldset style="width:32%; float:left; margin-right: 1%;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Фото после...</label>
							<input name="foto_after" value="<?= set_value('foto_after'); ?>" type="text" style="width:92%;">
						</fieldset>

						<fieldset style="width:32%; float:left; margin-right: 1%;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Дополнительно</label>
							<input name="additionally" value="<?= set_value('additionally'); ?>" type="text" style="width:92%;">
						</fieldset>

						<div class="clear"></div>
					</div>
					<footer>
						<div class="submit_link">
							<input type="submit" value="Добавить" class="alt_btn">
							<input type="reset" value="Отмена">
						</div>
					</footer>
			</form>
		</article><!-- end of post new article -->
</section>