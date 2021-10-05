<?php session_start(); ?>
<!DOCTYPE html>
<html lang="fr">
 <head>
    <title>Jap.....</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link href="jap.css" rel="stylesheet" type="text/css" />
 </head>

 <body>



	
	
	
    <?php include 'function.php';
    affichage_bandeau();?>
    

	

	<br>

	<div class = "accueilPref">
	
	
	<?php if (isset($_SESSION['id'])) {
		 $prefA = tri_prefA($_SESSION['pseudo']);
		 $prefL = tri_prefL($_SESSION['pseudo']);?>
	<h1>Recommandé pour vous : </h1>
	<div class = "pref">
		
	<ul>	
	<?php for($i =0; $i<2 ; $i++){
		$pa = $prefA -> fetch() ; ?>
		<li>   <img src = img/<?=$pa['image'], "> <br> <a href = page_anime.php?page=", $pa['page'], ">" ,$pa['nom'], "</a>"?></li>
		<?php } ?>
		<?php for($y =0; $y<2 ; $y++){
			$pl = $prefL -> fetch() ; ?>
			<li>	 <img src = img/<?=$pl['image'], "> <br>", $pl['nom']?></li>
		<?php  } } ?>

	</ul>
	</div>
	
	<br>
	
	
	</div>
	
		
		
		
		
	<div class = "accueilAnime">
	
	
	<?php  
	$anime = tri_anime();
	?>
	<h1>Les derniers Anime en date : </h1>
	<div class = "anime">
		
	<ul>	
	<?php for($i =0; $i<4 ;$i++){  
		$a = $anime ->fetch() ;	?>
		<li>   <img src = img/<?=$a['image'], "> <br> <a href = page_anime.php?page=", $a['page'], ">" , $a['nom'], "</a>"?></li>
		<?php  } ?>
		
	</ul>
	</div>
	
	<br>
	
	
	</div>	
		
	<div class = "accueilLivres">
	
	
	<?php 
	$livre = tri_livre();
	?>
	
	<h1>Les derniers Mangas sortis : </h1>
	<div class = "livres">
	<ul>	
		<?php for($i = 0 ; $i<4 ; $i++){
		 $l = $livre ->fetch() ; 	?>
		<li>   <image src = img/<?= $l['image'], "> <br> <a href = page_manga.php?page=", $l['page'], ">", $l['nom'], "</a>"?></li>
		<?php } ?>
	</ul>
	</div>
	
	<br>
	
	
	</div>
		
	<!-- Add les href sur chaque image lorsque contenu dispo-->	
		<br>
		
		<div class = "stats">
		
		<?php
		$stats = stats();
		$s = $stats -> fetch() ;
		?>
		<li><image src = "img/chika.gif" alt = chika></image><p> Le genre préféré de nos utilisateurs est :  <?= $s[0], ".  Ils sont au nombre de ", $s[1], " à aimer ce genre."?></p> 	</li>
		
		
		
		</div>
		
		
		
		</form>
	

  </body>
</html>
