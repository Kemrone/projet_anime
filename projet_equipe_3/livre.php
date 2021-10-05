<?php session_start(); ?>
<!DOCTYPE html>
<html lang="fr">
 <head>
    <title>Livres</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link href="jap.css" rel="stylesheet" type="text/css" />
	
 </head>


<?php include 'function.php';
affichage_bandeau(); ?>


 <body>
	 



<br>

<h1>Liste des mangas/novels disponibles :</h1>
	
<form method = "GET" >
	<input type ="search" name = "requete" placeholder ="Recherche..." />
	<input type ="submit" value= "Valider" />
</form>
<div class ="livres">
<?php 		
 if(isset($_GET['requete']) AND !empty($_GET['requete'])) {

 $res = recherche_livre($_GET['requete']); 
}
 else {$res = req_livre();}
	$i =0;
  if ($res->rowCount() > 0 ) { ?>
	
	<?php while($r = $res ->fetch()) { 
		if( $i== 0){
			echo '<ul>';
		}
		$i++	?>
		
		<li><img src =img/<?= $r[1], "  height = 200px weight = 200px /> <br> <a href = page_manga.php?page=", $r['page'], ">", $r[2]," </a>";   ?></li>
		<?php if ($i== 4){
			echo'</ul>'; 
			echo'<br>'; 
			$i = 0;
				
			}} ?>
<?php } else { ?>
	Aucun résultat
<?php }  ?>
		</div>
</body>
