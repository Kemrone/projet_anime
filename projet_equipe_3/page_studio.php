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
	$res=page_studio($page);
	$fetch = page_studio($page);
	$r = $res ->fetch() 	?>
		</br>
	
	
	<table>
				<caption><?php echo $r[0];?></caption>
				
				<tr>
					<th rowspan="2">
						<img src = "img/studio.png" height = 500px width = 400px /></th>
				</tr>
				
				<tr><td width = 10%><div class ="colonneas">Historique</div>  </td>
				<td><?php echo $r[1];?></td>
				</tr>
						
				</tr></table>
				
				<div class = "anime">
					<h1>Les anime produits par le studio :</h1>
					<br>
					
					<?php while( $f = $fetch -> fetch()){ ?>
						<ul>
						<li>   <img src = img/<?=$f['image'], "> <br> <a href = page_anime.php?page=", $f['page'], ">", $f['nom'], "</a>"?></li> 
						<?php } ?>
					 </ul>
					
					</div>
				
	</ul>
  </body>
</html>
