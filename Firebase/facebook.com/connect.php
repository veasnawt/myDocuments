<?php
$dsn = "mysql:host=localhost;dbname=facebook";
$dbusername = "veasnawt";
$dbpassword = "1234";

try {
	$pdo = new PDO($dsn, $dbusername, $dbpassword);
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	return $pdo;
    }
catch(PDOException $e){
	    echo "Connection failed: " . $e->getMessage();
    }
$pdo = null;
?>
