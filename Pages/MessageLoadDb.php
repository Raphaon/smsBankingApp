<?php 
require_once('./connexion.php');
require_once('./message.php');
require_once('./Fonctions.php');
$req = $conOra->query("SELECT * FROM $user.MOUVEMENT_JOUR");

while ($mvt_jour = $req->fetch()) 
{

	$message = new Message();
	$message->setDateCreation(date("Y/m/d", strtotime($mvt_jour["DATE_MOUVEMENT"])) );
	$message->setReffMessage($mvt_jour["NUM_LIGNE"]);
	$message->setAccountReff($mvt_jour["NUM_COMPTE"]);
	if($mvt_jour["MONTANT_CREDIT"] - $mvt_jour["MONTANT_DEBIT"]>0){
		$message->setObject('Crediter');
	}else{ $message->setObject('Debiter') ; }
	if($message->getObject() == 'Debiter'  ){
		$msg = $mvt_jour["LIBELLE"].' MONTANT : '. $mvt_jour["MONTANT_DEBIT"].' Numero de Compte : ' .$mvt_jour["NUM_COMPTE"].' People Finance Vous Remercie';
	}else
	{
		$msg = $mvt_jour["LIBELLE"].' MONTANT : '. $mvt_jour["MONTANT_CREDIT"].' Numero de Compte : ' .$mvt_jour["NUM_COMPTE"].' People Finance Vous Remercie';
	}
	$message->setContenu($msg);
	if($message->getAccountReff() !="" )
	{
		$client = getCustomerByNumCompte($message->getAccountReff(), $conOra);
		if($client->getRacine()!="")
		{
			
			$client = getCustomer($client->getRacine(), $bdd);
			var_dump($client);
		}
		
	}
	if($message->save($bdd)){ echo "List des messages Mise à jours !";}
	
}


