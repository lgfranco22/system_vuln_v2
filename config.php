<?php

define("DB_NAME","sqli");
define("DB_USER","");
define("DB_PASS","");
define("DB_HOST","");

$link = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME, 3306);
$db = mysqli_select_db($link, DB_NAME);

if(!$link)
{
    echo "erro ao conectar ao banco de dados!";
    exit();
}
