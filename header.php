<?php

//osztályok betöltése
function __autoload($class_name) {
	$class_name = strtolower($class_name);
	$filename = $class_name . '_class.php';

	$file = 'classes/' . $filename;

	if (!is_file($file))
		return false;
	include $file;
}

$NOW = date("Y-m-d H:i:s");

//adatbázis kapcsolódás
if ($_SERVER['SERVER_NAME'] == 'localhost'):
	$db = new mysqli('localhost', 'root', '', 'akifeladat');
    //hibakiíratás
    ini_set( "display_errors", "1" );
    error_reporting( E_ALL & ~E_NOTICE );
elseif ($_SERVER['SERVER_NAME'] == 'vivien2007.hu'):
	$db = new mysqli('localhost', 'vivi_czshop', 'Kosar6066', 'vivi_czshop');
    //hibák elrejtése
    error_reporting(E_ALL ^ E_NOTICE);
    ini_set( "display_errors", "0" );
endif;

if ($db -> connect_errno > 0):
	die("Kapcsolódási hiba [" . $mysqli -> connect_error . "]");
endif;
$db -> set_charset("utf8");

session_start();

extract($_SERVER);
extract($_SESSION);
extract($_GET);
extract($_POST);


$layout = new Template('layout');


require_once ('function.php');
?>