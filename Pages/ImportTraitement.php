<meta charset="utf-8">
<?php 
//Demarage de la session et chargement des Class requise
session_start();
include('./connexion.php'); 
include('./fonctions.php');
require_once '../PHPExcel-1.8/Classes/PHPExcel/IOFactory.php';

// Verification si le formulaire à été charger et n'est pas vide 
if(isset($_FILES['FichierClient']) and !empty($_FILES['FichierClient']))
{

  $linkFichier = realpath($_FILES['FichierClient']['name']); 
	// Chargement du fichier Excel
	$objPHPExcel = PHPExcel_IOFactory::load($linkFichier);

/**
* récupération de la première feuille du fichier Excel
* @var PHPExcel_Worksheet $sheet
*/


$sheet = $objPHPExcel->getSheet(0);

echo '<table border="1">';

//initialisation des colonnes

 $p  = 1;
 // On boucle sur les lignes
foreach($sheet->getRowIterator() as $row) 
{
   echo '<tr>';
   
   //initialisation du nombre de ligne 
      $i = 1;

    //Creation d'une instance de Client 
    	$customer = new Client();


     // On boucle sur les cellule de la ligne
   foreach ($row->getCellIterator() as $cell) 
   {

   	//Chargement des informations du client 
   		if($i == 1)
   	  {
   			$customer->setMatricule($cell->getValue());
   		}
   		else if($i ==2 )
   		{
   			$customer->setNom( $cell->getValue() );
   		}
   		else if($i ==3 )
   		{
   			$customer->setTel1( $cell->getValue() );
   		}
   		else if($i ==4 )
   		{
   			$customer->setTel2( $cell->getValue() );
   		}
   		else if($i ==5 )
   		{
   			$customer->setLang( $cell->getValue() );
   		}
   		else if($i ==6 )
   		{
   			$customer->setRacine  ( $cell->getValue() );
   		}

      echo '<td>';
		  print_r($cell->getValue());
      
      $i++;
      echo '</td>';
   }


   	if($p == 1)
   	{
   		echo '<td>';
    	 echo 'Etat Client';
     echo '</td>';
   	}else if($customer->isExist($bdd))
   {
   		echo '<td>';
    	echo 'Existe deja';
    	echo '</td>';	
   }else
   {
   	echo '<td>';
    	echo 'Nouveau';
    	echo '</td>';
      $request = $bdd->query("INSERT INTO tmp_customer(matricule, nom, tel1, tel2, tel3, racine) 
                              VALUES( '".$customer->getMatricule()."',
                                      '".$customer->getNom()."',
                                      '".$customer->getTel1()."',
                                      '".$customer->getTel2()."',
                                      '".$customer->getTel3()."',
                                      '".$customer->getRacine()."') ");
   }
  
   $p++;

 
   echo '</tr>';

}

echo '</table>';



}

 ?>
<form method="post">
	<input type="submit" value="Enregistrer">
	<input type="hidden" value="OK" name="isVal">
</form>

<?php 
	if(isset($_POST['isVal']) )
	{
    if(!empty($_POST["isVal"]))
    {
      $requet = $bdd->query("CALL migrateCustomer()");
      if($requet)
      {
        echo "Liste des clients Mise à jour avec success ";
      }else
      {
        echo "Echec de la mise jour des clients ";
      }
    }
	}
	
 ?>
