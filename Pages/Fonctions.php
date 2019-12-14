<?php 
include ('./connexion.php');
include('./Client.php');
require_once('./Account.php');
/**
 * Class resument l'ensemble des fonctions de l'application
 */

// retourne le solde d'un compte 

	function getAccountBalance($numCompte)
	{
		return 0;
	}

	// utilise la racine d'un client pour trouver et retourner la liste de ses comptes  
	function getAccountList($CustomerRacine, $con)
	{
		$req = $con->query("SELECT * FROM RAPHA_B2000.COMPTE_CLIENT_CORRECT where RACINE_CLIENT ='".$CustomerRacine."'");
		$accounList = array('tes' =>'test');
		while ($res = $req->fetch() ) {
			$accout = new Account();
			$accout->setNumCompte($res["NUM_COMPTE"]);
			$accout->setRacine($res['RACINE_CLIENT']);
			$accout->setIntituleCompte($res["INTITULE"]);
			$accout->setSolde($res["SOLDE"]);
			array_push($accounList, $accout);
		}
		$accounList =  array_splice($accounList, 1);
		return $accounList;
	}

//obtenir les informations d'un client par sa racine 

function getCustomer($racine, $bdd)
{
	$req = $bdd->query("SELECT * from customer where isActif ='Yes'  and Racine ='".$racine."' ");
	if($req != null)
	{
		$custom = new Client();
		while ($res = $req->fetch()) 
		{
			$custom->setMatricule($res["matriculeClient"]);
			$custom->setNom($res["nom"]);
			$custom->setPrenom($res["prenom"]);
			$custom->setRacine($res['Racine']);
			$custom->setTel1($res["tel1"]);
			$custom->setTel2($res["tel2"]);
		}
		return $custom;
	}
	return null;
}

function getCustomerByNumCompte($numCompte, $con)
{
	$req = $con->query("SELECT * from ALL_COMPTE_CLIENT where NUM_COMPTE ='".$numCompte."'");
	if($req != null)
	{
		$custom = new Client();
		while ($res = $req->fetch()) 
		{
			$custom->setMatricule($res["RACINE_CLIENT"]);
			$custom->setNom($res["INTITULE"]);
			$custom->setRacine($res['RACINE_CLIENT']);
		}
		return $custom;
	}
	return null;
}






	function debitMensuelCompte($numComptecClient, $numComptegestion, $con)
	{
		//CALL  RAPHA_B2000.VIREMENT('10001990280042','16000990280030', 1000,0,0,'','','C','Test avec la methode','OD');
		$req = $con->query("CALL RAPHA_B2000.VIREMENT('".$numComptecClient."', '".$numComptegestion."', 500,0,0,'','','C','Deduction Mensuel du forfait SMS Banking' ,'OD') ");	

		if($req)
			return true ;
		return false;
	}

	function __construct($argument)
	{
		# code...
	}

	function isCustomerExist($matri, $bdd)
	{
		$req = $bdd->query("SELECT count(*) as nbreVal FROM customer where matriculeClient = '". $matri ."' ");
		if($res = $req->fetch())
		{
			if($res["nbreVal"]>0)
				return true;
		} 	
		return false;
	}


	function getCustomerList($bdd)
	{
		$customers = array('client' =>  "1" );
		$req = $bdd->query("SELECT * from customer where isActif ='Yes' ");
		while ($res = $req->fetch()) 
		{
			$custom = new Client();
			$custom->setMatricule($res["matriculeClient"]);
			$custom->setNom($res["nom"]);
			$custom->setPrenom($res["prenom"]);
			$custom->setRacine($res['Racine']);
			$custom->setTel1($res["tel1"]);
			$custom->setTel2($res["tel2"]);
			array_push($customers, $custom);
		}
		$customers = array_slice($customers, 1);
		return $customers;
	}