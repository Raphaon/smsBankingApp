<?php
    $tns="
     (DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = LOCALHOST)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = ORCL)
    )
  )";
$user = 'RAPHA_B2000';
$pass = "a";
try
{
    
    $bdd = new PDO('mysql:host=localhost;dbname=sms_banking_app;charset=utf8', 'root', '');
    $conOra = new PDO ("oci:dbname =".$tns, $user, $pass);
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}




   






?>
