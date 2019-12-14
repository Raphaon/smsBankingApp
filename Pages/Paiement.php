<table border="1">
	<thead>
		<th>Matricule</th>
		<th>Noms et Prenoms</th>
		<th>Racine</th>
		<th>Tel 1</th>
		<th>Tel 2</th>
	</thead>
	<tfoot>
		<th>Matricule</th>
		<th>Noms et Prenoms</th>
		<th>Racine</th>
		<th>Tel 1</th>
		<th>Tel 2</th>
	</tfoot>
<?php 
require_once('./connexion.php');
require_once ('./Fonctions.php');
$customers  = getCustomerList($bdd);
foreach ($customers as $client) 
{
	
?>

	
	<tr>
		<td> <?php echo $client->getMatricule() ;?></td>
		<td> <?php echo $client->getNom().' '.$client->getPrenom() ;?></td>
		<td> <?php echo $client->getRacine() ;?></td>
		<td> <?php echo $client->getTel1() ;?></td>
		<td> <?php echo $client->getTel2() ;?></td>
	</tr>



<?php } ?>
</table>
<form method="post">
	<input type="hidden" value="payer" name="toPay">
	<input type="submit" value="Debiter les Frais Mensuels" name="">
</form>

<?php 
if(isset($_POST['toPay']) and !empty($_POST["toPay"]))
{
	foreach ($customers as $client) 
	{
		$accountList = 	getAccountList($client->getRacine(),  $conOra);
		$havePaie = false;
		foreach ($accountList as $account) {
			if($account->getSolde()>500 and $havePaie ==false)
			{
				debitMensuelCompte($account->getNumCompte(), '16000990280030', $conOra);
				echo "Paiement effectuer avec succes";
				$havePaie =true;
			}
		}
	}
}

?>