<?php
include("./connexion.php");
require_once('./Client.php');
$req = $bdd->query("SELECT * FROM customer");
$date ="19/DEC/13";

$newDate = date("Y/m/d", strtotime($date));
echo $newDate;


$customer = new Client();
$customer->setMatricule("juestest");
$customer->setNom('nomtest');
$customer->setPrenom('prenomtest');
$customer->setTel1('montel1');
$customer->setTel2('montel2');
$customer->setTel3('montel3');
$customer->setRacine("marecine");

$requet = $bdd->query("INSERT INTO tmp_customer(matricule, nom, tel1, tel2, tel3, racine) 
                              VALUES( '".$customer->getMatricule()."',
                                      '".$customer->getNom()."',
                                      '".$customer->getTel1()."',
                                      '".$customer->getTel2()."',
                                      '".$customer->getTel3()."',
                                      '".$customer->getRacine()."') ");