<?php 
class Account
{
protected $numCompte ="";
protected $intituleCompte ="";
protected $libelleCompte ="";
protected $solde =0;
protected $soldeDebit=0;
protected $soldeCredit =0;
protected $racine = "";


public function setRacine($raci){$this->racine = $raci ;}
public function setNumCompte($numComp){$this->numCompte = $numComp ;}
public function setIntituleCompte($intituleCom) {$this->intituleCompte = $intituleCom ;}
public function setSolde($solde){$this->solde =$solde ;}
public function setLibelle($libelle){$this->libelleCompte = $libelle; }
public function setSoldeDebit($debit){$this->soldeDebit =  $this->soldeDebit + $debit ;}
public function setSoldeCredit($credit){$this->soldeCredit = $this->setSoldeCredit + $credit ;}

public function getNumCompte(){return $this->numCompte ;}
public function getIntitule() {return $this->intituleCompte ;}
public function getLibelle(){ return $this->libelleCompte;}
public function getSolde(){return $this->solde ; }
public function getSoldeCredit(){$this->setSoldeCredit;}
public function getSoldeDebit(){return $this->getSoldeDebit;}
public function getRacine(){$this->racine ;}

}
