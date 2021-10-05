<?php session_start(); ?>
<!DOCTYPE html>
<html lang="fr">
 <head>
    <title><?php $_GET['page']?></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link href="jap.css" rel="stylesheet" type="text/css" />
 </head>
  <body>
	  <?php include 'function.php';?>
	  
	  <?php affichage_bandeau(); ?>
	  
	  
	 <ul>
	
	<?php $page = $_GET['page'];
	$res=page_anime($page);
	
	$r = $res ->fetch() 	?>
		</br>
	
	
	<table>
				<caption><?php echo $r[1];?></caption>
				
				<tr>
					<th rowspan="4">
						<img src = img/<?= $r[0], " height = 533px weight = 381px />"?></th>
					<td><div class ="colonne">Date de sortie : </div></td>
					<td><?php echo $r[2];?></td>
				</tr>
				
				<tr><td><div class ="colonne">Nombre d'épisodes : </div></td>
				<td><?php echo $r[3];?></td>
				</tr>
				
				<tr><td><div class ="colonne">Genre(s) :</div></td>
				<td><?php echo $r[6];?></td>
				</tr>
				
				<tr><td><div class ="colonne">Nom du studio :</div></td>
				<td><?php echo $r[5];?></td>
				</tr></table>
				</br>
				
				<table>
				<tr><td>
					<div class ="colonne2">Synopsis :</div></td>
				<td><?php echo $r[4];  ?></td>
				</tr>
	</table>
	</ul>
  </body>
</html>
