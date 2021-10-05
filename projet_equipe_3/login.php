<?php 
	include 'function.php'; 
	if (isset($_POST['pseudo']) AND isset($_POST['mdp'])) {
		verification($_POST['pseudo'],$_POST['mdp']);
	}
?>
<!DOCTYPE html>
<html lang="fr">
	<head>
		<title>Conexion</title>
		<meta charset="utf-8"/>
		<link rel="stylesheet" type="text/css" href="compte.css">
	</head>

	<body class="cpt">
		<?php affichage_bandeau(); ?>
		<form id="log" action="login.php" method="post">
			<fieldset id="co">
				<legend>connexion</legend>
				Pseudo :<br/> <input type="text" placeholder = "Ex : xXxDarkSasuke37xXx" size ="25" name="pseudo"  maxlength="30"  required/><br/>
				Mot de passe : <br/><input type="password" placeholder = "xxxxxxxxxx" size ="25" name="mdp"  maxlength="30"  required/><br/>
				<input id="send" type="submit" name="envoi" value="connexion">
			</fieldset>
		</form>
	</body>
</html>