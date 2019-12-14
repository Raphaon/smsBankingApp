<?php
//Chatgement des fichiers requis 
require_once('./connexion.php');
require_once('./Fonctions.php');
require_once("./Message.php");
$datejour = date('y/m/d');
// a ajouter and dateCreation =  '".$datejour."'
$req = $bdd->query("SELECT * FROM message where statutMessage ='KO'  " );
if($req != null)
{
	while ($message = $req->fetch()) 
	{
		$client =$client = getCustomerByNumCompte($message["account_reff"], $conOra);
		var_dump($client);
		$client = getCustomer($client->getRacine(), $bdd);

		$userSMS ='raphaondobo';
		$sender = 'PeFi';
		$passSMS ="xLa9b6f4";
		$receiver = $client->getTel1();
		$msg = new Message();
		$msg->setContenu($message["contenu"]);
		$msg->setReffMessage($message["reffMessage"]);
		$msg->setStatutMessage($message["statutMessage"]);
		$url_base = "http://obitsms.com/api/bulksms?username=raphaondobo&password=xLa9b6f4&sender=".urlencode($sender)."&destination=".urlencode($receiver)."&message=".urlencode($msg->getContenu());
		$ch = curl_init($url_base);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$response = curl_exec($ch);
		echo $response;
		if($response == "Success")
		{
			$msg->updateToOk($bdd);
		}else
		{
			$receiver = $client->gettel2();
			$response = curl_exec($ch);

			if($response =="Success")
			{
				$msg->updateToOk($bdd);
			}else
			{
				$receiver = $client->gettel3();
				$response = curl_exec($ch);
				if($response=="Success") 
					$msg->updateToOk($bdd);
			}
		}
		echo  $response;
		curl_close($ch);

		
	}
}
