<?php
//Chatgement des fichiers requis 
require_once('./connexion.php');

/**
 * La classe concernant les differents messages
 */
class Message 
{
	protected $reffMessage ="";
	protected $object ="";
	protected $contenu ="";
	protected $statusSMS = "KO"; 
	protected $dateCreation ="";
	protected $account_reff ="";

	public function getReffMessage(){return $this->reffMessage ;}
	public function getObject(){return $this->object ;}
	public function getStatusSMS(){ return $this->statusSMS ;}
	public function getContenu(){return $this->contenu ;}
	public function getDateCreation (){return $this->dateCreation ; }
	public function getAccountReff(){return $this->account_reff;}



	public function setAccountReff($account_reff) {$this->account_reff = $account_reff;}
	public function setReffMessage($reff){$this->reffMessage = $reff ;}
	public function setObject($obj){$this->object = $obj ;}
	public function setStatutMessage($status){$this->statusSMS = $status ;}
	public function setDateCreation($createDate){$this->dateCreation = implode('/',array_reverse  (explode('-',$createDate)));}
	public function setContenu($conte){$this->contenu = $conte ;}

	public function isExist($conn)
	{
		$req = $conn->query("SELECT COUNT(*) AS nbreVal FROM message where reffMessage='".$this->reffMessage."' ");
		if($req != null){

			if($res = $req->fetch())
			{
				if($res["nbreVal"]>0)
					return true;
			} 	
		}
		return false;
	}
	function __construct()
	{
		# code...
	}
	
	// $conn Parametre de connexion  
	public function save($bdd)
	{
		
		if($this->reffMessage!="" and $this->object != "" and $this->contenu !="" and $this->dateCreation !="")
		{
			if(!$this->isExist($bdd))
			{
				$req = $bdd->query("INSERT INTO  message(reffMessage, object, contenu, statutMessage, dateCreation, account_reff) VALUES('".$this->reffMessage."','".$this->object."','".$this->contenu."','".$this->statusSMS."', '".$this->dateCreation."', '".$this->account_reff."')");
					var_dump($req);
				if($req)
					return true;
			}
			
			
		}
		
		return false; 
	}

	public function updateToOk($conn)
	{
		$req = $conn->query("UPDATE message set statutMessage = 'OK' where reffMessage ='".$this->reffMessage."' ");
				if($req)
					return true;
		return false;
	}

	public function toMessage($object)
	{
		$this->reffMessage = $object["reffMessage"];
		
	}
}