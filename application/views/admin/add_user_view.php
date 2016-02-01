<!--<div class="clear"></div>-->
<section id="main" class="column">		
		<article class="width_full">
			<header align="center"><h3>Добавить пользователя</h3></header>
				<?php echo validation_errors(); ?>
				<?= form_open('admin/add_user') ?>
					<div class="module_content">
						<fieldset style="width:48%; float:left; margin-right: 3%;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Логин</label>
							<input name="meta" value="<?= set_value('meta'); ?>" type="text" style="width:92%;">
						</fieldset>
						
						<fieldset style="width:48%; float:left;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Пароль</label>
							<input name="meta" value="<?= set_value('meta'); ?>" type="text" style="width:92%;">
						</fieldset><div class="clear"></div>

						<fieldset style="width:48%; float:left; margin-right: 3%;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Имя</label>
							<input name="meta" value="<?= set_value('meta'); ?>" type="text" style="width:92%;">
						</fieldset>
						
						<fieldset style="width:48%; float:left;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Фамилия</label>
							<input name="meta" value="<?= set_value('meta'); ?>" type="text" style="width:92%;">
						</fieldset><div class="clear"></div>
						
						<fieldset style="width:48%; float:left; margin-right: 3%;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Пол</label>
							<select name="category" style="width:92%;">
								<option disabled selected hidden>--</option>
								<option>Мужчина</option>
								<option>Женщина</option>
							</select>
						</fieldset>
						
						<fieldset style="width:48%; float:left;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Дата рождения</label>
							<input name="meta" value="<?= set_value('meta'); ?>" type="text" style="width:92%;">
						</fieldset><div class="clear"></div>

						<fieldset style="width:48%; float:left; margin-right: 3%;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Телефон</label>
							<input name="meta" value="<?= set_value('meta'); ?>" type="text" style="width:92%;">
						</fieldset>
						
						<fieldset style="width:48%; float:left;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>E-mail</label>
							<input name="meta" value="<?= set_value('meta'); ?>" type="text" style="width:92%;">
						</fieldset><div class="clear"></div>

						<fieldset style="width:48%; float:left; margin-right: 3%;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Права пользователя</label>
							<select name="category" style="width:92%;">
								<option disabled selected hidden>--</option>
								<option>1</option>
								<option>2</option>
							</select>
						</fieldset>
						
						<fieldset style="width:48%; float:left;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Включен/Выключен</label>
							<select name="category" style="width:92%;">
								<option disabled selected hidden>--</option>
								<option>1</option>
								<option>2</option>
							</select>
						</fieldset>

						<fieldset style="width:30%; float:left; margin-right: 3%; margin-left: 1%;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Марка авто</label>
							<select name="category" style="width:92%;">
								<option disabled selected hidden>--</option>
								<option>1</option>
								<option>2</option>
							</select>
						</fieldset>
						
						<fieldset style="width:30%; float:left;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Модель авто</label>
							<select name="category" style="width:92%;">
								<option disabled selected hidden>--</option>
								<option>1</option>
								<option>2</option>
							</select>
						</fieldset>

						<fieldset style="width:30%; float:left; margin-left: 3%;"> <!-- to make two field float next to one another, adjust values accordingly -->
							<label>Год выпуска авто</label>
							<select name="category" style="width:92%;">
								<option disabled selected hidden>--</option>
								<option>1</option>
								<option>2</option>
							</select>
						</fieldset>
					
					</div>
					
					<footer>
						<div class="submit_link">
							<input type="submit" value="Добавить" class="alt_btn">
							<input type="reset" value="Очистить">
						</div>
					</footer>
			</form>
		</article><!-- end of post new article -->
</section>