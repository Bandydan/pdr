<?php
include 'inc/db.php';

// C какой статьи будет осуществляться вывод
$startFrom = $_POST['startFrom'];

// Получаем 3 статей, начиная с последней отображенной
$res = mysqli_query($db, "SELECT * FROM `example_works` ORDER BY `id` DESC LIMIT {$startFrom}, 3");

// Формируем массив со статьями
$example_works = array();
while ($row = mysqli_fetch_assoc($res))
{
    $example_works[] = $row;
}

// Превращаем массив статей в json-строку для передачи через Ajax-запрос
echo json_encode($example_works);