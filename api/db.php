<?php

$hostname = "localhost";
$db_name = "db_a12345";
$db_user = "a12345";
$db_passwd = "*****";

// mostra uma mensagem de erro vinda do mysql
function showerror($db)
{
  die("Error " . mysqli_errno($db) . " : " . mysqli_error($db));
}


// faz uma conexão a uma base de dados
function dbconnect($hostname, $db_name,$db_user,$db_passwd)
{
  $db = @ mysqli_connect($hostname, $db_user, $db_passwd, $db_name);
  if(!$db) {
   die("Connection failed: " . mysqli_connect_error());
  }

 return $db;
}
?>
