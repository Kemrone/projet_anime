<?php  

/*Fonction de connection et modification de la bdd*/

	/*fonction pour se connecter à la bdd*/
	function connect()
	{
		$bddserver = 'localhost';
		$bddname = 'projet_anime';
		$bddlogin = 'root';
		try 
		{
	  		$sql = new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);
	  		$sql->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	  		return $sql;
		} 

		catch (Exception $e) 
		{
	  		die('Erreur : ' . $e->getMessage());
		}
	}
	/*fonction pour ajouter un membre à la bdd*/
	function add ($pseudo, $mdp, $mail, $pref)
	{
		$sql = connect();	
		$req = $sql->prepare('INSERT INTO utilisateurs(pseudo, mdp, mail, idGenre) VALUES (:pseudo, :mdp, :mail, :idGenre)');
		$req -> execute(array('pseudo' => $pseudo,'mdp'=> $mdp,'mail' => $mail, 'idGenre' => $pref));
	}
	
	/*fonction pour modifier le pseudo d'un utilisateur dans la bdd*/
function maj_pseudo ($pseudo)
    {
        $pseudo = concat(valider_pseudo($pseudo));
        $sql = connect();
        $req = $sql->query('UPDATE utilisateurs SET pseudo = '.$pseudo.' WHERE idUtilisateur = '.$_SESSION['id'].'');
        $req->closeCursor();
        header ('location: accueil.php');
        
    }
    /*fonction pour modifier le mot de passe d'un utilisateur dans la bdd*/
    function maj_mdp ($mdp, $conf)
    {
        $mdp=concat(valider_mdp($mdp, $conf));
        $sql = connect();
        $req = $sql->query('UPDATE utilisateurs SET mdp = '.$mdp.' WHERE idUtilisateur = '.$_SESSION['id'].'');
        $req->closeCursor();
        header ('location: accueil.php');
    }
    /*fonction pour mettre à jour l'adresse mail d'un utilisateur dans la bdd*/
    function maj_mail ($mail)
    {
        $mail=concat(valider_mail($mail));
        $sql = connect();
        $req = $sql->query('UPDATE utilisateurs SET mail = '.$mail.' WHERE idUtilisateur = '.$_SESSION['id'].'');
        $req->closeCursor();
        header ('location: accueil.php');
    }
    /*fonction pour mettre à jour la préfèrences d'un utilisateur*/
    function maj_pref($pref)
    {
        $pref=concat(valider_pref($pref));
        $sql = connect();
        $req = $sql->query('UPDATE utilisateurs SET idGenre='.$pref.' WHERE idUtilisateur = '.$_SESSION['id'].'');
        $req->closeCursor();
        header ('location: accueil.php');
    }

/*Fonction de requêtage, affichage de la bdd*/

	/*fonction pour vérifier que le pseudo n'est pas déjà present dans la bdd*/
	function comparer_pseudo ($pseudo)
	{
		$pseudo = concat($pseudo);
		$sql = connect();	
		$req = $sql->query('SELECT COUNT(*) AS nbr FROM utilisateurs WHERE pseudo = '.$pseudo.'');
		$comp = $req->fetch();
		if ($comp['nbr'] > 0)
		{
			return false;
		}
		else
		{
			return true;
		}
		$req->closeCursor();
	}
	/*fonction pour vérifier que l'adresse mail n'est pasd déjà présente dans la bdd*/
	function comparer_mail ($mail)
	{
		$mail = concat($mail);
		$sql = connect();	
		$req = $sql->query('SELECT COUNT(*) AS nbr FROM utilisateurs WHERE mail = '.$mail.'');
		$comp = $req->fetch();
		if ($comp['nbr'] > 0)
		{
			return false;
		}
		else
		{
			return true;
		}
		$req->closeCursor();
	}
	/*fonction qui retourne le mot de passe d'un utilisateur*/
	function trouver_mdp ($pseudo)
	{
		$pseudo = concat($pseudo);
		$sql = connect();	
		$req = $sql->query('SELECT mdp FROM utilisateurs WHERE pseudo = '.$pseudo.'');
		$comp = $req->fetch();
		return $comp['mdp'];
		$req->closeCursor();
	}
	/*fonction qui retourne l'id d'un utilisateur*/
	function trouver_id ($pseudo)
	{
		$pseudo = concat($pseudo);
		$sql = connect();	
		$req = $sql->query('SELECT idUtilisateur FROM utilisateurs WHERE pseudo = '.$pseudo.'');
		$comp = $req->fetch();
		return $comp['idUtilisateur'];
		$req->closeCursor();
	}
	/*fonction qui retourne l'adresse mail d'un utilisateur*/
	function trouver_mail ($pseudo)
	{
		$pseudo = concat($pseudo);
		$sql = connect();	
		$req = $sql->query('SELECT mail FROM utilisateurs WHERE pseudo = '.$pseudo.'');
		$comp = $req->fetch();
		return $comp['mail'];
		$req->closeCursor();
	}
	/*fonction pour afficher la bdd*/
	function affichage()
	{
		$sql = connect();
		$request = $sql->query("select * from utilisateurs");
		while ($r = $request->fetch()) 
		{
			echo $r['idUtilisateur'];
			echo "........";
			echo $r['pseudo'];
			echo "........";
			echo $r['mail'];
			echo "........";
			echo $r['mdp'];
			echo "........";
			echo $r['idGenre'];
			echo "<br/>";
		}
		$request->closeCursor();
	}

/* Fonction de vérification, modification de données*/

	/*fonction pour ajouter des guillemet à une chaîne de caractère et la traiter dans la bdd*/
	function concat ($a)
	{
		return '"'.$a.'"';
	}
	/*fonction pour valider le format de pseudo*/
	function valider_pseudo($pseudo)
	{
		$format = "/[a-zA-Z0-9_-]/";
		if (preg_match($format, $pseudo) && comparer_pseudo($pseudo))
		{
			return $pseudo;
		}
		else
		{
			echo '<body onLoad="alert(\'Erreur pseudo\')">';
			echo '<meta http-equiv="refresh" content="0;URL=inscription.php">';
		}	
	}
	/*fonction pour valider le format du mot de passe et comparer avec sa confirmation*/
	function valider_mdp($mdp, $conf)
	{
		$format = "/[a-zA-Z0-9-_]/";
		if (preg_match($format, $mdp) AND $mdp == $conf)
		{
			return password_hash($mdp, PASSWORD_DEFAULT);
		}
		else
		{
			echo '<body onLoad="alert(\'Erreur de mot de passe\')">';
			echo '<meta http-equiv="refresh" content="0;URL=inscription.php">';
		}
	}
	/*fonction pour valider le format de l'adresse mail*/
	function valider_mail ($mail)
	{
		$format = "/[a-zA-Z0-9-_.]+[@]+[a-zA-Z]+[.]+[a-zA-Z]/";

		if (preg_match($format, $mail) && comparer_mail($mail))
		{
			return $mail;
		}
		else
		{
			echo '<body onLoad="alert(\'Erreur e-mail\')">';
			echo '<meta http-equiv="refresh" content="0;URL=inscription.php">';
		}
	}
	/*fonction pour valider la préférence de l'utilisateur*/
	function valider_pref ($pref)
	{
		if ($pref == 1 OR 2 OR 3 OR 4 OR 5 OR 6)
		{
			return $pref;
		}
		else
		{
			echo '<body onLoad="alert(\'Erreur lors de la selection des préférences\')">';
			echo '<meta http-equiv="refresh" content="0;URL=inscription.php">';
		}
	}
	/*fonction pour valider l'enssemble des informations lors de l'inscription*/
	function valider_inscription ($pseudo,$mdp,$mail,$pref)
	{			
		$pseudo = valider_pseudo($_POST['pseudo']);
		$mdp = valider_mdp($_POST['mdp'] , $_POST['conf']);
		$mail = valider_mail($_POST['mail']);
		$pref = valider_pref($_POST['genre']);
		add($pseudo,$mdp,$mail,$pref);
		header ('location: login.php');
	}
	/*fonction de connexion d'utilisateur avec initialisation des variables de session*/
	function verification ($pseudo, $mdp)
	{
		$verif = trouver_mdp($pseudo);
		if (password_verify($mdp, $verif)) 
		{
   			session_start();
			initialisation($pseudo);
			header ('location: accueil.php');
		} 
		else 
		{
 	    	echo '<body onLoad="alert(\'Erreur de saisie des identifiants\')">';
			echo '<meta http-equiv="refresh" content="0;URL=login.php">';
		}
		
	}


function initialisation($pseudo)
	{
		
			$_SESSION['id'] = trouver_id($pseudo);
			$_SESSION['pseudo'] = $pseudo;
			$_SESSION['mail'] = trouver_mail($pseudo);
			
		} 
		
		
		/*Affiche le bandeau*/

function affichage_bandeau(){
            echo '<div class = '."liens".'>
                    <a class="lb" href='."accueil.php".'>Accueil</a>
                    <a class="lb" href='."anime.php".'>Anime</a> 
                    <a class="lb" href='."livre.php".'>Manga</a>
                     <a class="lb" href='."auteur.php".'>Auteur</a>
                     <a class="lb" href='."studio.php".'>Studio</a>';
            if (isset($_SESSION['id'])) {
                echo '<a class="lb" href="profil.php">profil </a><form method="post" action="deco.php"><input id="dc" type="submit" name="decon" value="déconnexion"></form></div>';
                }
            else{
                echo '<a class="lb" href="inscription.php" >inscription </a><a class="lb" href="login.php">connexion</a></div>';
            }
    }
	


/*On recherche toutes les colonne de "livre" dans la BDD*/
function req_livre(){
$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$res = $bdd->query('SELECT * FROM livre ');


return $res;

}




/*On recherche les livres les plus récents*/
function tri_livre(){
$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$res = $bdd->query('SELECT image,nom,page FROM livre ORDER BY publication DESC;');

	

return $res;

}


/*Pour faire une recherche via les données en parametre*/
function recherche_livre($rech){
$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);


	$requete = htmlspecialchars($rech);
	$res = $bdd -> query('SELECT * FROM livre WHERE NOM LIKE "%'.$requete.'%"');
	

return $res;
}





/*On recherche toutes les colonnes de 'anime' dans la BDD*/


function req_anime(){
$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$res = $bdd->query('SELECT * FROM anime ');


return $res;

}


/*On recherche les anime les plus récents.*/
function tri_anime(){
$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$res = $bdd->query('SELECT image,nom,page FROM anime ORDER BY sortie DESC;');

	

return $res;

}




/*On recherche un anime via les données en paramètre.*/
 function recherche_anime($rech){
	$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$requete = htmlspecialchars($rech);
	$res = $bdd -> query('SELECT * FROM anime WHERE NOM LIKE "%'.$requete.'%"');
	
	return $res;
}



/*On sélectionne les anime aléatoirement selon les préférences de l'utilisateur.*/
 function tri_prefA($user){
	 
		
		$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$res = $bdd->query('SELECT image,nom,anime.page FROM anime INNER JOIN qualifier ON anime.IdAnime = qualifier.IdAnime 
					INNER JOIN genre ON genre.Idgenre = qualifier.idGenre 
					INNER JOIN utilisateurs ON genre.Idgenre = utilisateurs.Idgenre 
					WHERE utilisateurs.pseudo = "'.$user.'" 
					AND genre.Idgenre = utilisateurs.idGenre
					ORDER BY RAND() ; ');

return $res;
}


/*On sélectionne les livres aléatoirement selon les préférences de l'utilisateur.*/
 function tri_prefL($user){
	 
		
		$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$res = $bdd->query('SELECT image,nom,livre.page FROM livre INNER JOIN caracteriser ON livre.IdLivre = caracteriser.IdLivre
					INNER JOIN genre ON genre.Idgenre = caracteriser.idGenre
					INNER JOIN utilisateurs ON genre.Idgenre = utilisateurs.Idgenre 
					WHERE utilisateurs.pseudo = "'.$user.'" 
					AND genre.Idgenre = utilisateurs.idGenre 
					ORDER BY RAND() ; ');

return $res;
}	






/*Permet de connaitre le genre le plus apprécié des utilisateurs*/

 function stats(){ 
	
	$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$res = $bdd->query('SELECT type, COUNT(idUtilisateur) FROM utilisateurs INNER JOIN genre on utilisateurs.idGenre = genre.idGenre GROUP BY type ORDER BY COUNT(idUtilisateur) DESC;');

return $res;
	
	

}









/*On selectionne toutes les colonnes de 'Studio' dans la BDD*/
function req_studio(){
	$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$res = $bdd ->query('SELECT * FROM studio;');

return $res;

	
	}
/*On recherche les studios en fonction des parametres*/
	function recherche_studio($rech){
	$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$requete = htmlspecialchars($rech);
	$res = $bdd -> query('SELECT * FROM studio WHERE NOM LIKE "%'.$requete.'%"');
	
	return $res;
}

	
	
	
/*On selectionne toutes les colonnes de 'Auteur' dans la BDD*/
	function req_auteur(){
	$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$res = $bdd ->query('SELECT * FROM auteur;');

return $res;

	
	}
	
/*On recherche les auteurs en fonction des parametres*/	
	function recherche_auteur($rech){
	$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$requete = htmlspecialchars($rech);
	$res = $bdd -> query('SELECT * FROM auteur WHERE NOM LIKE "%'.$requete.'%"');
	
	return $res;
}
	

/*On recherche, dans les tables auteurs et manga, les infos qui vont nous permettre de créer la page id pour chaque anime*/
function page_anime($para){
	$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$res= $bdd->query('SELECT anime.image,anime.nom,anime.sortie,anime.nbEpisodes,anime.synopsis,studio.nom,genre.type FROM anime INNER JOIN est_produit ON anime.idAnime=est_produit.idAnime INNER JOIN studio ON est_produit.idStudio=studio.idStudio INNER JOIN qualifier ON anime.idAnime=qualifier.idAnime INNER JOIN genre ON qualifier.idGenre=genre.idGenre WHERE anime.page LIKE "%'.$para.'%";');

return $res;
}


/*On recherche, dans les tables auteurs et manga, les infos qui vont nous permettre de créer la page id pour chaque manga*/
function page_manga($para){
	$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$res= $bdd->query('SELECT livre.image,livre.nom,livre.publication,livre.nbVolume,livre.resume,auteur.nom,genre.type FROM livre INNER JOIN est_ecrit ON livre.idLivre=est_ecrit.idLivre INNER JOIN auteur ON est_ecrit.idAuteur=Auteur.idAuteur INNER JOIN caracteriser ON livre.idLivre=caracteriser.idLivre INNER JOIN genre ON caracteriser.idGenre=genre.idGenre WHERE livre.page LIKE "%'.$para.'%";');

return $res;
}


/*On recherche les infos pour créer la page id des auteurs*/
function page_auteur($para){
	$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$res= $bdd->query('SELECT auteur.nom, biographie, livre.nom, livre.image, livre.page FROM auteur 
INNER JOIN est_ecrit ON auteur.idAuteur = est_ecrit.idAuteur
INNER JOIN livre ON livre.idLivre = est_ecrit.IdLivre
WHERE auteur.page LIKE  "%'.$para.'%";');

return $res;
}

/*On recherche les infos pour creer la page id des studios*/
function page_studio($para){
	$bddserver = 'localhost';
	$bddname = 'projet_anime';
	$bddlogin = 'root';

$bdd =  new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8",$bddlogin);

$res= $bdd->query('SELECT studio.nom, historique, anime.nom, anime.image, anime.page FROM studio 
INNER JOIN est_produit ON studio.idStudio = est_produit.idStudio
INNER JOIN anime ON anime.idAnime = est_produit.IdAnime
WHERE studio.page LIKE  "%'.$para.'%";');

return $res;
}

?>
