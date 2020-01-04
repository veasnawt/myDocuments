<html>
<body>
  <?php
  $name = $_POST['name'];
  $email = $_POST['email'];
  $password = $_POST['password'];
  $password2 = $_POST['password2'];

  $myfile = fopen("data.txt", "w");
  fwrite($myfile, $name);
  fwrite($myfile, $email);
  fwrite($myfile, $password);
  fwrite($myfile, $password2);
  fclose($myfile);
  ?>

</body>
</html>
