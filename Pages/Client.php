<?php 
class Client 
{
	protected $matricule ="";
	protected $nom="";
	protected $prenom ="";
	protected $racine ="";
	protected $lang ="";
	protected $tel1 ="";
	protected $tel2 ="";
	protected $tel3 ="";
	protected $bdd;
	function __construct()
	{
		$this->matricule ="unknow";
	}

	public function getMatricule(){return $this->matricule;}
	public function getNom(){return $this->nom ;}
	public function getPrenom(){return $this->prenom ;}
	public function getRacine(){return $this->racine;}
	public function getLang(){return $this->lang;}
	public function getTel1(){return $this->tel1; }
	public function getTel2(){return $this->tel2 ;}
	public function getTel3(){return $this->tel3 ;}
	public function setMatricule($matri){$this->matricule = $matri;}
	public function setNom($nom){$this->nom = $nom;}

	public function setPrenom($prenom){$this->prenom = $prenom;}
	public function setRacine($racine){$this->racine = $racine;}
	public function setLang($lang)
	{
		$this->lang = $lang;
	}
	public function setTel1($tel1)
	{
		$this->tel1 = $tel1;
	}
	public function settel2($tel2)
	{
		$this->tel2 = $tel2;
	}
	public function setTel3($tel){$this->tel3 =$tel;}

	// Verifie si un client existe 

function isExist($bdd)
	{
		$req = $bdd->query("SELECT count(*) as nbreVal FROM customer where matriculeClient = '".$this->matricule ."' ");
		if($res = $req->fetch())
		{
			if($res["nbreVal"]>0)
				return true;
		} 	
		return false;
	}
	// retourne la liste des comptes d'un client 
	
	public function getAccountlist($bdd)
	{
		if($this->racine != "")
		{
			return 0;
		}
	}

	public function save($bdd)
	{
		if($this->matriculeClient !="" and $this->nom !="" and $this->racine != "" and $tel1 != "")
		{
			$req = $con->query("INSERT INTO customer(matriculeClient, nom, prenom,racine, tel1, tel2, tel3) VALUES('".$this->matricule."', '".$this->nom."', '".$this->prenom."', '".$this->racine."', '".$this->tel1."', '".$this->tel2."', '".$this->tel3."') ");
		}else
		{
			return false;
		}


	}

	public function cloneClient($obj)
	{
		$this->matricule = $obj['matricule'];
	}

}

