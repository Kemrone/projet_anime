<?php session_start(); ?>
<html lang="fr">
 <head>
    <title>Studio</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link href="jap.css" rel="stylesheet" type="text/css" />
	
 </head>


<?php include 'function.php';
affichage_bandeau(); ?>


 <body>
	 



<br>

<h1>Les Studios d'animation :</h1>
	<div class = "studio">
<form method = "GET" >
	<input type ="search" name = "requete" placeholder ="Recherche..." />
	<input type ="submit" value= "Valider" />
</form>

<?php 		
 if(isset($_GET['requete']) AND !empty($_GET['requete'])) {

 $res = recherche_studio($_GET['requete']); 
}
 else {$res = req_studio();}

  if ($res->rowCount() > 0 ) { ?>
	<ul>
	<?php while($r = $res ->fetch()) {	?>
		<li><?= "<a href =page_studio.php?page=", $r['page'],">", $r[1], "</a>" ;?></li>
	<?php } ?>
	</ul>
<?php } else { ?>
	Aucun résultat
<?php }  ?>
		</div>
</body>
