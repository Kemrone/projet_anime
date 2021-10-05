<?php 
	include 'function.php';
	if (isset($_POST['pseudo']) AND isset($_POST['mdp']) AND isset($_POST['conf']) AND isset($_POST['mail']) AND isset($_POST['genre'])) 
	{
		valider_inscription($_POST['pseudo'],$_POST['mdp'],$_POST['conf'],$_POST['mail'],$_POST['genre']);
	}
?>
<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="utf-8"/>
		<title>Création de compte</title>
		<link href="compte.css" rel="stylesheet" type="text/css" />
	</head>
		
	<body class="cpt">
		<?php affichage_bandeau(); ?>
		<form id ="user" action="inscription.php" method="post" onsubmit = Ok()>
		<div class = "all">
		<fieldset id="compte">
			<legend>Compte</legend>
			Pseudo :<br/> <input type="text" class="champ_inscription" placeholder = "Ex : xXxDarkSasuke37xXx" size ="25" name="pseudo"  maxlength="30"  required/><br/>
			Votre Adresse mail :<br/> <input type="email" class="champ_inscription" placeholder= "Ex : mail@monmail.com"  size ="25" name="mail"  required/><br/>
			Mot de passe : <br/><input type="password" class="champ_inscription" placeholder = "xxxxxxxxxx" size ="25" name="mdp"  maxlength="30"  required/><br/>
			Confirmez mot de passe :<br/> <input type="password" class="champ_inscription" placeholder = "xxxxxxxxxx" size ="25" name="conf"  maxlength="30"  required/>
		</fieldset>
		<fieldset id="pref">
			<legend>Préférences</legend><br/>
			<input type="radio" id="action-id" name="genre" value=1 class="prefBouton">
			<label for="action-id" >Action</label><br/><br/>
			<input type="radio" id="aventure-id" name="genre" value=2 class="prefBouton">
			<label for="aventure-id" >Aventure</label><br/><br/>
			<input type="radio" id="fantasy-id" name="genre" value=3 class="prefBouton">
			<label for="fantasy-id">Fantasy</label><br/><br/>
			<input type="radio" id="romance-id" name="genre" value=4 class="prefBouton">
			<label for="romance-id">Romance</label><br/><br/>
			<input type="radio" id="sport-id" name="genre" value=5 class="prefBouton">
			<label for="sport-id">Sport</label><br/><br/>
			<input type="radio" id="sf-id" name="genre" value=6 class="prefBouton">
			<label for="sf-id">Science-fiction</label>
		</fieldset>
		<p>
			<input type="submit" id="sub" name="envoi" value="Envoyer">
		</p>
		</div>
	</form>
	</body>
</html>