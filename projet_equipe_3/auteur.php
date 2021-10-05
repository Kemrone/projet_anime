<?php session_start(); ?>
<html lang="fr">
 <head>
    <title>Auteur</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link href="jap.css" rel="stylesheet" type="text/css" />
	
 </head>


<?php include 'function.php';
affichage_bandeau(); ?>


 <body>
	 



<br>

<h1>Les mangaka (ODA n°1) :</h1>
	<div class = "auteur">
<form method = "GET" >
	<input type ="search" name = "requete" placeholder ="Recherche..." />
	<input type ="submit" value= "Valider" />
</form>

<?php 		
 if(isset($_GET['requete']) AND !empty($_GET['requete'])) {

 $res = recherche_auteur($_GET['requete']); 
}
 else {$res = req_auteur();}

  if ($res->rowCount() > 0 ) { ?>
	<ul>
	<?php while($r = $res ->fetch()) {	?>
		<li><?= "<a href =page_auteur.php?page=", $r['page'],">", $r[1], "</a>" ;?></li>
	<?php } ?>
	</ul>
<?php } else { ?>
	Aucun résultat
<?php }  ?>
		</div>
</body>
