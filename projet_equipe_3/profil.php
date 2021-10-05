<?php
session_start();
include 'function.php';
if (isset($_POST['newPseudo']) AND isset($_POST['newMdp']) AND isset($_POST['newConf']) AND isset($_POST['newMail']) AND isset($_POST['newPref'])) {
    if ($_POST['newPseudo'] != Null) {
        maj_pseudo($_POST['newPseudo']);
        session_unset();
        initialisation ($_POST['newPseudo']);
    }
    if ($_POST['newMdp'] != Null && $_POST['newConf'] != Null) {
        maj_mdp($_POST['newMdp'],$_POST['newConf']);
    }
    if ($_POST['newMail'] != Null) {
        maj_mail($_POST['newMail']);
        $_SESSION['mail'] = trouver_mail($_SESSION['pseudo']);
    }
        maj_pref($_POST['newPref']);
}
?>
<!DOCTYPE html>
<html lang="fr">
	<head>
		<title>Profil</title>
		<meta charset="utf-8"/>
		<link rel="stylesheet" type="text/css" href="compte.css">
	</head>

	<body class="cpt">
		<?php affichage_bandeau(); ?>
		<form method="post" action="profil.php">
			<fieldset id="maj">
				<legend>Mes informations</legend>
				Pseudo actuel : <br/>
				<div class="infoPerso">
					<?php echo $_SESSION['pseudo'];  ?>
				</div>
				Nouveau pseudo :<br/> <input type="text" placeholder = "Ex : xXxDarkSasuke37xXx" size ="24" name="newPseudo"  maxlength="30"/>
				<br/><hr/>
				Mail actuel : <br/>
				<div class="infoPerso">
					<?php echo $_SESSION['mail'];  ?>
				</div>
				Nouveau mail :<br/><input type="email" placeholder= "Ex : mail@monmail.com"  size ="24" name="newMail"/>
				<br/><hr/>
				Nouveau mot de passe : <br/><input type="password" placeholder = "xxxxxxxxxx" size ="24" name="newMdp"  maxlength="30"/><br/>
				Confirmation mot de passe :<br/> <input type="password" placeholder = "xxxxxxxxxx" size ="24" name="newConf"  maxlength="30"/>
				<br/><hr/>
				Préférences : 
				<select name="newPref">
					<option value=1>action</option>
					<option value=2>aventure</option>
					<option value=3>fantasy</option>
					<option value=4>romance</option>
					<option value=5>sport</option>
					<option value=6>science-fiction</option>
				</select>
				<br/>
				<input id="sendP" type="submit" name="maj" value="valider">
			</fieldset>
		</form>
	</body>
</html>
