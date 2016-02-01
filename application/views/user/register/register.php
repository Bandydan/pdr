		<div class="col-md-12">
			<div class="page-header">
				<h1>Регистрация</h1>
				<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    			<?php echo '<script src="/assets/js/jquery.chained.min.js"></script>'; ?>
			</div>
			
			<?= form_open('/register') ?>
				<div class="form-group">
					<label for="login">Логин</label>
					<input type="text" class="form-control" id="login" name="login" value="<?= set_value('login'); ?>" placeholder="Введите логин">
					<p class="help-block"> </p>
				</div>
				<div class="form-group">
					<label for="name">Имя</label>
					<input type="text" class="form-control" id="name" name="name" value="<?= set_value('name'); ?>" placeholder="Введите имя">
					<p class="help-block"> </p>
				</div>
				<div class="form-group">
					<label for="surname">Фамилия</label>
					<input type="text" class="form-control" id="surname" name="surname" value="<?= set_value('surname'); ?>" placeholder="Введите фамилию">
					<p class="help-block"> </p>
				</div>
				<div class="form-group">
					<label for="sex">Пол</label>
					<select id="sex" name="sex" class="form-control">
						<option disabled selected hidden>Введите пол</option>
						<option>мужчина</option>
						<option>женщина</option>
					</select>
					<p class="help-block"> </p>
				</div>
				<div class="form-group">
					<label for="birthsday">Дата рождения</label>
					<input type="text" class="form-control" id="birthsday" name="birthsday" value="<?= set_value('birthsday'); ?>" placeholder="Введите дату вашего рождения">
					<p class="help-block"> </p>
				</div>
				<div class="form-group">
					<label for="tel">Телефон</label>
					<input type="text" class="form-control" id="tel" name="tel" value="<?= set_value('tel'); ?>" placeholder="Введите номер телефона">
					<p class="help-block"> </p>
				</div>

				<div class="form-group">
					<label for="email">E-mail</label>
					<input type="email" class="form-control" id="email" name="email" value="<?= set_value('email'); ?>" placeholder="Введите ваш e-mail">
					<p class="help-block"> </p>
				</div>
				<?php //$result = array_unique($avtos); var_dump($result); ?>
				<div class="form-group">
					<label for="Avto">Какой у Вас автомобиль</label>
					<p><select id="manufacture_name" name="ManufactureName">
						<option>--</option>
		                <? foreach ($avtos as $manufact) : ?>
		                <option value="<?= $manufact['manufacture'] ?>">
		                <?= $manufact['manufacture'] ?></option>
		                <? endforeach; ?>
            		</select>

            		<select id="model_name" name="ModelName">
		            	<option>--</option>
		                <? foreach ($avtos as $model) : ?>
		                <option value="<?= $model['model'] ?>" class="
		                <?= $model['manufacture'] ?>"><?= $model['model'] ?></option>
		                <? endforeach; ?>
            		</select>

            		<select id="year" name="year">
		            	<option>--</option>
		                <? foreach ($avtos as $year) : ?>
		                <option value="<?= $year['year'] ?>" class="
		                <?= $year['model'] ?>"><?= $year['year'] ?></option>
		                <? endforeach; ?>
            		</select></p>
					<p class="help-block"> </p>
				</div>

				<div class="form-group">
					<label for="password">Пароль</label>
					<input type="password" class="form-control" id="password" name="password" value="<?= set_value('password'); ?>" placeholder="Введите ваш пароль">
					<p class="help-block"> </p>
				</div>
				<div class="form-group">
					<label for="password_confirm">Повторите пароль</label>
					<input type="password" class="form-control" id="password_confirm" name="password_confirm" value="<?= set_value('password_confirm'); ?>" placeholder="Повторите пароль">
					<p class="help-block"> </p>
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-default" value="Регистрация">
				</div>
			</form>

			<script type="text/javascript">
				$("#model_name").chained("#manufacture_name");
				$("#year").chained("#model_name");	
			</script>
		</div>
	</div><!-- .row -->
</div><!-- .container -->