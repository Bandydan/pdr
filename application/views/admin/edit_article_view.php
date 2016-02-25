<!--<div class="clear"></div>-->
<section id="main" class="column">		
		<article class="module width_full">
			<header><h3>Добавить страницу</h3></header>
			<?php echo validation_errors(); ?>
				<?= form_open('admin/edit_article') ?>
					<div class="module_content">
						<fieldset>
							<label>Заголовок</label>
							<input name="title" value="<?= $get_article['title']; ?>" type="text">
						</fieldset>
						<fieldset>
							<label>Содержимое</label>
							<textarea name="text" rows="12"><?= $get_article['content_text']; ?></textarea>
							<script type="text/javascript">
							CKEDITOR.replace('text');
							</script>
						</fieldset>
						<fieldset style="width:48%; float:left; margin-right: 3%;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Категория</label>
							<select name="category" style="width:92%;">
								<option><?= $get_article['category']; ?></option>
								<option>Главная</option>
								<option>Примеры работ</option>
								<option>Обучение</option>
								<option>Инструмент</option>
								<option>Оценить вмятину</option>
								<option>Контакты</option>
							</select>
						</fieldset>
						<fieldset style="width:48%; float:left;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Тэги</label>
							<input name="meta" value="<?= $get_article['meta']; ?>" type="text" style="width:92%;">
						</fieldset><div class="clear"></div>
						<fieldset style="width:48%; float:left;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Адрес</label>
							<input name="address" value="<?= $get_article['address']; ?>" type="text" style="width:92%;">
						</fieldset><div class="clear"></div>
						<h3>Включить страницу</h3>
						<div class="switch">
    						<input name="status" type="checkbox">
    						<label><i></i</label>
						</div>
					</div>
					<footer>
						<div class="submit_link">
							<input type="submit" name="add" value="Опубликовать" class="alt_btn">
							<input type="reset" value="Отмена">
						</div>
					</footer>
			</form>
		</article><!-- end of post new article -->
</section>