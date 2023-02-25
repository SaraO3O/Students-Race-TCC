<?php
ini_set('default_charset', 'UTF-8');
$servidor = "localhost";
$user = "id7584368_students_race_01";
$senha = "12345";
$nome_db = "id7584368_students_race_db";

$link = mysqli_connect($servidor, $user, $senha, $nome_db);
$link->query("SET NAMES utf8");


