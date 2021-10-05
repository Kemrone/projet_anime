-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 14 avr. 2019 à 23:15
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_anime`
--

-- --------------------------------------------------------

--
-- Structure de la table `adapter`
--

DROP TABLE IF EXISTS `adapter`;
CREATE TABLE IF NOT EXISTS `adapter` (
  `idAnime` int(11) NOT NULL,
  `IdLivre` int(11) NOT NULL,
  PRIMARY KEY (`idAnime`,`IdLivre`),
  KEY `adapter_livre0_FK` (`IdLivre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `adapter`
--

INSERT INTO `adapter` (`idAnime`, `IdLivre`) VALUES
(4, 1),
(5, 2),
(6, 3),
(7, 4),
(8, 4),
(9, 4),
(10, 5),
(11, 8),
(19, 9),
(20, 10),
(21, 11),
(14, 13),
(15, 14),
(18, 15);

-- --------------------------------------------------------

--
-- Structure de la table `anime`
--

DROP TABLE IF EXISTS `anime`;
CREATE TABLE IF NOT EXISTS `anime` (
  `idAnime` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(400) NOT NULL,
  `nom` varchar(400) NOT NULL,
  `sortie` date NOT NULL,
  `nbEpisodes` int(11) NOT NULL,
  `synopsis` text NOT NULL,
  `page` varchar(500) NOT NULL,
  PRIMARY KEY (`idAnime`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `anime`
--

INSERT INTO `anime` (`idAnime`, `image`, `nom`, `sortie`, `nbEpisodes`, `synopsis`, `page`) VALUES
(1, 'Fate_Stay_Night.jpg', 'Fate Stay Night', '2006-01-06', 24, 'L\'histoire suit sept Masters s\'affrontant dans la ville de Fuyuki. Dotés de pouvoirs magiques, et pouvant compter sur l\'aide de Servants qu\'ils ont invoqués, le dernier d\'entre eux pourra s\'approprier le Graal et exaucer son vœu le plus cher.', '.'),
(2, 'Fate_Zero.jpg', 'Fate Zero Saison 1', '2011-10-01', 12, 'Fate/Zero se déroule dix ans avant les évènements de Fate/stay Night qui raconte en détails ce qui s\'est passé lors de la quatrième guerre du Saint Graal dans la ville de Fuyuki. À la suite de trois guerres sans vainqueurs, la quatrième guerre débute enfin...\r\nCette guerre voit s\'affronter les familles Einzbern, Mato, et Tosaka depuis des siècles. Bien que Kiritsugu qui est au côté de Saber, ait longtemps désiré être un héros aux yeux de tous, il a définitivement abandonné le Saint Graal lorsqu\'il a réalisé que ceci entraînait forcément la mort d\'une autre personne. Pour le bien de l\'humanité, il sera prêt à détruire quiconque se mettra en travers de la paix.', '.'),
(3, 'Fate_Zero2.jpg', 'Fate Zero Saison 2', '2012-04-07', 12, 'La 2nde saison de Fate Zero.', '.'),
(4, 'SAO.jpg', 'Sword Art Online', '2012-07-07', 25, 'Le monde prend la forme d\'un château flottant géant appelé Aincrad, comportant 100 paliers. Chaque étage dispose d\'un cadre de style médiéval et un donjon avec un boss qui doit être vaincu pour que les joueurs puissent accéder à l\'étage supérieur. Comme la plupart des jeux de rôle, le jeu propose un système de niveau. Cependant, après la période de bêta test, le créateur du jeu a activé un système pour piéger les joueurs à l\'intérieur d\'Aincrad, empêchant toute déconnexion. Pour pouvoir quitter le jeu, il faut que quelqu\'un le finisse. Si les joueurs meurent dans le jeu ou si leurs casques d\'immertion virtuelle sont enlevés de force, leur cerveau reçoit un flux de micro-ondes entraînant la mort.', '.'),
(5, 'Accel_World.jpg', 'Accel World', '2012-04-06', 24, 'En 2046, la technologie a fait naître le Neuro-Linker (dernière évolution du Nerve-Gear apparaissant dans Sword Art Online, light novel écrit par le même auteur), un système qui permet à l\'utilisateur de manipuler ses cinq sens pour accéder à une réalité augmentée et rechercher des informations sur Internet, mais qui permet aussi d\'entrer dans un univers virtuel sous la forme d\'un avatar choisi. Le jeune Haruyuki Arita, petit, gros, timide, est le souffre-douleur d\'une bande de loubards de son collège. Son seul refuge, là où il se sent libre et doué pour quelque chose, se trouve dans l\'univers virtuel du réseau de l\'établissement, où il est le meilleur joueur d\'un jeu de squash… jusqu\'au jour où la plus belle fille de son école vient l\'y trouver et lui donne rendez-vous dans le monde réel pour discuter. Une rencontre qui va bouleverser la vie de Haruyuki. Elle lui apprend en effet l\'existence du monde accéléré et lui partage une application, le Brain Burst, qui s\'installe directement dans le Neuro-Linker, mais qui implique certaines contreparties… Une nouvelle aventure, en tant que Silver Crow, commence alors pour Haruyuki dans le monde accéléré de Brain Burst.', '.'),
(6, 'Code_Geass.jpe', 'Code Geass', '2006-10-05', 25, 'Le 10 juin 2010 du calendrier impérial, le Nouvel Empire de Britannia a écrasé les forces japonaises et a conquis le pays en moins d\'un mois grâce à ses mechas nommés Knightmare. Le Japon a perdu sa liberté et a été renommé Zone 11 tandis que les japonais ont perdu leur identité et sont appelés \"Elevens\". Ces derniers sont forcés de vivre dans des ghettos tandis que les colons britanniens occupent la majeure partie du territoire. Pourtant, des mouvements rebelles naissent et les nationalistes japonais continuent la lutte pour l\'indépendance.\r\n\r\nUn jeune homme nommé Lelouch s\'est juré de détruire l\'empire de Britannia depuis que son père, l\'empereur lui-même, n\'a rien fait pour pourchasser les terroristes qui ont tué sa mère et estropié sa jeune sœur. Sept ans plus tard, lors d\'une altercation entre les deux camps, il rencontre un groupe de rebelles Elevens qui ont volé un secret militaire : une mystérieuse jeune fille. En entrant en contact avec elle, Lelouch obtient le Geass, un pouvoir qui lui permet de contrôler la pensée de toutes les personnes qui croisent son regard, mais qui ne fonctionne qu\'une seule fois sur chacune d\'elles. Grâce à ce pouvoir, Lelouch va pouvoir mener le combat qu\'il a toujours voulu contre Brittania et poursuivre ses deux rêves : venger sa mère et créer un monde où sa sœur pourra vivre en paix.', '.'),
(7, 'Kuroko.jpg', 'Kuroko no Basket Saison 1', '2012-04-07', 25, 'Dans le college Teiko, le club de Basketball était connu pour être l\'un des meilleurs du pays. Au sein de l\'établissement, cinq génies du sport étaient connus sous le nom de « Génération Miracles » ( Kiseki no Sedai). Toutefois, les cinq membres considéraient un sixième joueur comme un élément tout aussi prodigieux qu\'ils ne l\'étaient : le joueur fantôme. À la fin de leur scolarité dans le collège de Teikô, les cinq prodiges se dispersèrent dans des lycées de renommée, désirant chacun mener leur équipe au sommet.\r\n\r\nC\'est ainsi que Tetsuya Kuroko (le joueur fantôme en question), un jeune garçon à l\'apparence chétive, ayant la faculté de diriger ailleurs l\'attention des autres pour se rendre invisible, intègre le modeste lycée de Seirin, fraîchement construit et avide de dénicher de nouveaux talents pour ses divers clubs de sport.\r\n\r\nÀ son arrivée au lycée, la Coach de l\'équipe de Basket, Riko Aida prend les inscriptions des premières années. C\'est ainsi que Kuroko est devancé à son inscription par l\'imposant Taïga Kagami venant tout droit des États-Unis, et désireux de pratiquer le Basketball au Japon, bien qu\'ayant une très mauvaise impression de ce dernier.\r\n\r\nRapidement, les nouveaux arrivés dans le club de Basketball sont testés dans un match face à l\'équipe du lycée. Kuroko fait alors démonstration de son immense talent de passeur alors que Kagami étale son talent inné et destructeur. Bien que tout les différencie, les deux joueurs finissent par sympathiser et deviennent une paire terriblement efficace.\r\n\r\nKagami se promet de devenir le meilleur joueur du pays en surpassant les cinq membres de la Génération des Miracles, alors que Kuroko décide de devenir l\'ombre de Kagami en l\'aidant à réaliser son rêve. Plus tard, les deux amis avouent qu\'ils désirent, avant tout, faire de l\'équipe de basket-ball de Seirin la meilleure du Japon.', '.'),
(8, 'Kuroko.jpg', 'Kuroko no Basket Saison 2', '2013-10-05', 25, 'La suite de la saison 1 de Kuroko no Basket', '.'),
(9, 'Kuroko.jpg', 'Kuroko no Basket Saison 3', '2015-01-01', 25, 'La suite de la saison 2 de Kuroko no Basket', '.'),
(10, 'Fairy_Tail.jpg', 'Fairy Tail', '2009-10-12', 310, 'Dans le royaume de Fiore , il existe parmi le commun des mortels des hommes et des femmes qui manipulent la magie : ils sont appelés mages.\r\n\r\nParmi les nombreuses guildes, une d’entre elles fait particulièrement parler d’elle, que ce soit par les actes réalisés.... bl bla bla. Ya des seins, des gros boobs et c\'est tout ce qu\'il y a a dire de cet anime .', '.'),
(11, 'Gintama.jpg', 'Gintama', '2006-04-04', 367, 'Lors de l\'ère Edo(Japon médiéval), le Japon est envahi par les Amantos, des extraterrestres d\'origines diverses. C\'est derniers mirent fin à l\'ere des samurai, interdisant le port du sabre en public.\r\n\r\nL\'histoire commence avec Gintoki Sakata, un \r\nancien samurai, sauvant le jeune Shinpachi Shimura. Ce dernier, reconnaissant et impressionné par le samurai, décide de le suivre et de former un groupe d\'homme à tout faire (Yorozuya) avec ce dernier.\r\n\r\nIl s\'agit vraisemblablement d\'un anime culte, un pilier de la comédie au Japon. Certains occidentaux parlent même de \"South Park Japonais\".\r\n\r\nUn peu long à ce mettre en place, cet anime a tout pour plaire. Si faites parti de la team 2nd degrés, aimez l\'action, les bonnes histoires : foncez!', '.'),
(12, 'TOZ.jpg', 'Tales of Zestiria the X', '2016-07-03', 26, 'Une bien pale adaptation sans aucun sens du jeu vidéo Tales of Zestiria. Belle animation cependant. Si vous aimez en prendre visuellement plein les yeux, cet anime est fait pour vous. si vous préférez une histoire bien construite et cohérente, passez votre chemin.', '.'),
(13, 'Evangelion.jpeg', 'Neon Genesis Evangelion', '1995-10-04', 26, 'En 2000, une gigantesque explosion se produit en Antarctique, provoquant un cataclysme (raz-de-marée, fonte des calottes polaires) qui dévaste une grande partie de la planète. Les autorités déclarent que cette catastrophe était due à la chute d\'un astéroïde sur la planète.\r\n\r\nQuinze ans plus tard, l\'humanité a surmonté cet événement, appelé le Second Impact. Mais de mystérieuses créatures nommées Anges font leur apparition, et tentent de détruire Tokyo-3, la nouvelle capitale forteresse du Japon, construite après le Second Impact.\r\n\r\nPour les combattre, l\'organisation secrète NERV a mis au point une arme ultime, l\'Evangelion ou l\'Eva, robot géant anthropoïde piloté.\r\n\r\nShinji Ikari, quatorze ans, se rend à Tokyo-3 sur invitation de son père, qu\'il n\'a pas revu depuis dix ans. Il est loin de se douter qu\'il sera impliqué dans un conflit qui pourrait bien signifier la fin de l\'humanité quoi qu\'il arrive...\r\n\r\n', '.'),
(14, 'Bleach.jpg', 'Bleach', '2004-10-05', 366, 'Le récit commence en 2001 au Japon dans la ville fictive de Karakura. Ichigo Kurosaki, lycéen de 15 ans, arrive à voir, entendre et toucher les âmes des morts depuis qu\'il est tout petit. Un soir, sa routine quotidienne vient à être bouleversée à la suite de sa rencontre avec une shinigami (littéralement « dieu de la mort »), Rukia Kuchiki, et la venue d\'un monstre appelé hollow. Ce dernier étant venu dévorer les âmes de sa famille et la shinigami venue le protéger ayant été blessée par sa faute, Ichigo accepte de devenir lui-même un shinigami afin de les sauver.\r\n\r\nCependant, le transfert de pouvoir, censé être temporaire et partiel, est complet et ne s\'achève pas. Ichigo est forcé de prendre la responsabilité de la tâche incombant à Rukia Kuchiki. Il commence donc la chasse aux hollows tout en protégeant les âmes humaines.\r\n\r\nLe début est centré sur une chasse aux mauvais esprits relativement peu puissants, avec un simple sabre. L\'histoire va peu à peu se diriger vers un vaste complot mystico-politique après l\'apparition des premiers autres shinigami. Les batailles au sabre du commencement vont alors se métamorphoser en combats dantesques avec des armes aux pouvoirs surprenants et variés, et parfois aux proportions gigantesques.', '.'),
(15, 'Naruto.jpg', 'Naruto', '2002-10-03', 220, 'Dans ce monde ninja, il existe neuf créatures gigantesques, appelées \"les Démons à queues\", qui peuvent être scellées dans un humain après une cérémonie. L\'humain devient alors un hôte et dispose alors de la puissance du démon. Douze années avant le début du récit, l\'une de ces créatures attaque le village du Pays du Feu, Konoha. Elle est capturée et la moitié de son esprit a été scellée dans un nouveau-né nommé Naruto Uzumaki par le quatrième Hokage, faisant de lui l\'hôte du démon à neuf queues, Kyûbi.', '.'),
(16, 'Shippuden.jpg', 'Naruto Shippuden', '2007-02-15', 500, 'La suite de Naruto, prenant place après sont entrainement avec Jiraya. Cette partie se concentre principalement sur les affrontements avec l\'Akatsuki.', '.'),
(17, 'Shin_chan.jpg', 'Shin Chan', '1992-04-13', 800, 'C\'est lui ! Hey ! Shin Chan !\r\nCe gamin vous donnera mal au crâne !\r\nC\'est lui ! Hey ! Shin Chan !\r\nMéfiez-vous de lui quand il ricane !\r\nIl est mal élevé, et plutôt grossier \r\nDifficile à supporter\r\nShin Chan !\r\n\r\nIl fait honte à ses parents\r\nSes profs sont sur les dents\r\nL\'école c\'est pas pour lui\r\nIl préfère rester dans son lit\r\nPour sa mère c\'est un p\'tit ange adoré (adoré !)\r\nMais en fait c\'est une vraie calamité !\r\n(Une vraie calamité !)\r\n\r\nC\'est lui ! Hey ! Shin Chan !\r\nCe gamin vous donnera mal au crâne\r\nC\'est lui ! Hey ! Shin Chan !\r\nMéfiez-vous de lui quand il ricane !\r\nIl est mal élevé, et plutôt grossier\r\nDifficile à supporter\r\nShin Chan !', '.'),
(18, 'One_Piece.jpg', 'One Piece', '1999-10-20', 880, 'Il fut un temps où Gold Roger était le plus grand de tous les pirates, le \"Roi des Pirates\" était son surnom. A sa mort, son trésor d\'une valeur inestimable connu sous le nom de \"One Piece\" fut caché quelque part sur \"Grand Line\". De nombreux pirates sont partis à la recherche de ce trésor mais tous sont morts avant même de l\'atteindre. Monkey D. Luffy rêve de retrouver ce trésor légendaire et de devenir le nouveau \"Roi des Pirates\". Après avoir mangé un fruit du démon, il possède un pouvoir lui permettant de réaliser son rêve. Il lui faut maintenant trouver un équipage pour partir à l\'aventure !', '.'),
(19, 'Beastars_Anime.jpg', 'Beastars', '2019-10-01', 0, 'Adaptation en anime annoncée.', '.'),
(20, 'DR_Stone_Anime.jpg', 'DR Stone', '2019-07-01', 0, 'Adaptation prévue pour l\'été 2019.', '.'),
(21, 'GTO.jpg', 'Great Teacher Onizuka', '1999-06-30', 43, 'Eikichi Onizuka, 22 ans, « célibataire et libre comme l\'air », est un jeune professeur au passé douteux qui est nommé pour son premier poste dans une classe difficile ; il montre rapidement une vision de l\'enseignement totalement décalée avec les pratiques habituelles. Ses réactions anticonformistes et directes, souvent humoristiques, sont l\'axe central de cette série. Il va évoluer avec cette classe, dont la spécialité est de faire craquer moralement leurs professeurs, en tentant de la rallier peu à peu à sa cause.', '.');

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `idAuteur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(400) NOT NULL,
  `biographie` text NOT NULL,
  `page` varchar(500) NOT NULL,
  PRIMARY KEY (`idAuteur`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`idAuteur`, `nom`, `biographie`, `page`) VALUES
(1, 'Reki Kawahara', 'Reki Kawahara est un auteur japonais de light novels né dans la préfecture de Gunma le 17/08/1974. Il est principalement connu pour ses œuvres Accel World et Sword Art Online, le premier illustré par HIMA et le second par Abec. Reki Kawahara a écrit le premier volume de Sword Art Online en 2002 et l\'a présenté au Prix du roman de jeu Dengeki mais le projet a été refusé car il dépassait le nombre de pages limite. Il l\'a alors publié sur Internet sous le pseudonyme Fumio Kunori. En 2008, il participe de nouveau à la compétition avec son roman Accel World et a gagné le Grand prix. En plus de ce roman, l\'éditeur ASCII Media Works a demandé à Reki Kawahara de reprendre son ancien projet, Sword Art Online, ce qu\'il a accepté. La publication a alors commencé en avril 2009. L\'auteur publié également une série dérivée nommée Sword Art Online: Progressive. En 2012, ses deux séries ont été adaptées en anime, Accel World à partir du 6 avril 2012 et Sword Art Online à partir du 7 juillet 2012.', '.'),
(2, 'Ichiro Okouchi', 'Ichiro Okouchi est un scénariste et noveliste japonais né le 28 mars 1968 dans la préfeture de Miyagi. Il est diplomé de l\'université de Waseda, école de sciences humaines.', '.'),
(3, 'Hiro Mashima', 'Né le 3 mai 1977 à Nagano, au Japon, Hiro Mashima publie son premier manga, Rave, dans les pages du Weekly Shônen Magazine entre 1998 et 2005. Entre 2002 et 2007, Hiro Mashima sort quelques courtes histoires mais revient à ses premières amours fin 2006 avec une série qui s\'inscrit une nouvelle fois dans la durée : Fairy Tail. Bénéficiant d’un style plus maîtrisé, le manga rencontre une nouvelle fois le succès au sein du Weekly Shônen Magazine dans lequel il est prépublié.', '.'),
(4, 'Tadatoshi Fujimaki', 'Tadatoshi Fujimaki est un mangaka né à Tokyo le 09/06/1982. Il a fait ses études à la Toyama High School et à l\'Université Sophia à Yotsuya, dans le district Chiyoda de Tokyo.\r\nIl est connu essentiellement pour son manga \"Kuroko\'s Basket\", publié dans le célèbre Weekly Shonen Jump. C\'est en 2009 que la série \"Kuroko\'s Basket\" commence à être publié au Japon, alors que Tadatoshi Fujimaki avait déjà, en 2006 créé un one-shot pour cette série. Consécration absolue, le manga a été adapté en série anime en 2011.\r\nLa série s\'est terminée en septembre 2014 avec son 30e volume . Il est également scénariste de la série de light novel \"Kuroko’s Basket : Replace PLUS\".', '.'),
(5, 'Hideaki Sorachi', 'Sorachi Hideaki est mangaka japonais né à Hokkaido le 25/05/1979. Depuis son enfance, il a toujours été influencé par les mangas. A la fin de l\'école primaire, il montre à son père ses dessins qui réagit en rigolant. Suite de cette expérience, Sorachi a mis de côté son rêve de devenir mangaka. A l\'université, Sorachi a obtenu un diplôme dans la publicité. Pour gagner sa vie à la suite de ses études, il vend ses dessins. Il commence à être publié avec son oneshot Dandelion. Il connait le succès avec son manga fleuve Gintama.', '.'),
(6, 'Paru Itagaki', 'Paru Itagaki est une mangaka né le 09/09/1993. Elle se lance dans le manga après des études de cinéma. Paru Itagaki a des envies d\'histoires et de narration, mais la difficulté de lancer et coordonner un projet de film la pousse à choisir la voie de la plume pour créer ses propres univers. Elle va d\'elle-même à la rencontre des éditeurs, et trouve sa place dans le magazine Weekly Shonen Champion d\'Akita Shoten. En 2016, elle se voit offert la chance de publier une série d\'histoires courtes, Beast Complex. Déjà, des animaux humanisés sont les héros de son récit. Ce choix de personnages bestiaux n\'est pas anodin. Il lui permet de décrire plus librement les zones d\'ombre de l\'humanité, et d\'apposer un filtre sensible sur des situations difficiles.\r\nSix mois plus tard, c\'est le début de la sérialisation de Beastars. Le titre ne passe pas inaperçu. Dès sa sortie, il est la coqueluche des libraires et des média spécialisés. Ce shonen hors-norme trouve vite sa place dans le cœur des lecteurs, et est aujourd\'hui une série montante du catalogue de l\'éditeur.', '.'),
(7, 'Riichiro Inagaki', 'Riichiro Inagaki est un mangaka né à Tokyo le 20/06/1976. Il est récompensé par le prix King dan la catégorie meilleur Story-Board du 7eme Story King en 2001 pour son one-shot \"Eyeshield 21\". Celui-ci est publié sous forme de manga avec le dessinateur Yusuke Murata. Il fut prépublié dans le magazine hebdomadaire Weekly Shônen Jump entre le 23 juillet 2002 et le 15 juin 2009. Depuis mars 2017, il se consacre à son nouveau projet, Dr Stone.', '.'),
(8, 'Tôru Fujisawa', 'Tôru Fujisawa est né le 12 janvier 1967 à Hokkaïdo. Passionné très tôt de mangas et d\'animes, notamment par \"Goldorak\", de Go Nakai, il dessine beaucoup pendant sa jeunesse, de la maternelle au collège. Il réussit à décrocher des prix dans les matières liées à l\'art avec ses premières histoires comiques et parodiques. Après ses années de lycée, il crée avec ses amis un magazine pour fans, qui va le pousser à faire de sa passion un métier. Il est publié en 1989 dans \"Fresh Magazine\", avec son manga \"Love You\". Il enchaîne ensuite avec le manga \"Adesugata Junjou Boy\", édité par Kodansha, qui provoque un premier succès chez le public. Vient ensuite \"Shinan Junaï Gumi\", ou \"Young GTO\" en 1991, une série de mangas qui le suivra jusqu\'à aujourd\'hui. \"Bad company\" est un manga annonciateur de son oeuvre principale et la plus célèbre, à savoir \"Great Teacher Onizuka\" (1997), et de son héros principal Eikichi Onizuka, puisqu\'il raconte la rencontre de ce dernier avec le personnage Ryuji. En effet, \"GTO\" est vendu à 40 millions d\'exemplaire, et gagne le prix Kodansha avant de se finir en 2002. Tooru Fujisawa entame ensuite l\'écriture de nouveaux mangas, \"Rose Hip Rose\", \"Secret Combat Troops Momoider\", \"Wild Baseballers\" et \"Tokkô\", avec un succès moindre. Son retour dans l\'univers de la scolarité, avec \"Kamen Teacher\" et \"Reverend D.\", l\'emmène à la création d\'une suite à \"GTO\", intitulée \"GTO Shonan 14 Days\", en 2009. Il a annoncé récemment qu\'il se mariait avec Ayano Sugiyama.', '.'),
(9, 'Tite Kubo', 'Tite Kubo de son vrai nom Kubo Noriaki est né le 26 juin 1977. C\'est au collège, dans le cadre d\'un club de dessin qu\'il découvre son potentiel. En 2000, officiellement mangaka, il publie son premier manga « Zombie Powder » paru dans Shonen Jump. Mais cette série ne rencontre pas de succès et s\'arrête au 4ème volume. Ce n\'est que deux ans plus tard qu\'il se met à écrire un nouveau manga inspiré de Dragon Ball, sous le pseudonyme Tite Kubo. Publié dans Weekly Shonen Jump, ce nouveau manga rencontre un succès fulgurant. Bleach est né. Tite Kubo est un mangaka de talent, aux dessins somptueux, et qui a su créer dans Bleach des personnages attachants et mettre en place des rebondissements dans le scénario. ', '.'),
(10, 'Masashi Kishimoto', 'Masashi Kishimoto est un dessinateur-scénariste né le 8 novembre 1974 dans le département d’Okayama au Japon. Il a un frère jumeau, Seishi Kishimoto, lui aussi mangaka et auteur de 666 Satan et de Blazer Drive. À l\'âge de 20 ans, il reçoit déjà le prix « Hope Step » décerné par les éditions Shueisha aux jeunes auteurs à l’avenir prometteur pour son court récit intitulé « Karakuri ». La série « Naruto » connaît une prépublication dans l’hebdomadaire Weekly Shonen Jump depuis le n°17 (1999) et est adaptée à la télévision japonaise.', '.'),
(11, 'Eiichiro Oda', 'Eiichiro Oda est né le 1er janvier 1975 à Kumamoto (Japon). Dès l\'âge de 4 ans, il veut devenir mangaka. En 1992, alors qu\'il est encore au lycée, il est récompensé lors du 44e concours Tezuka pour Wanted!. Après avoir été assistant auprès de divers auteurs comme Nobuhiro Watsuki (l\'auteur de Kenshin le vagabond), c\'est en 1997 qu\'Eiichiro Oda publie le premier chapitre de One Piece dans le magazine Shonen Jump. Grâce aux personnages attachants, aux scènes d\'action dynamiques et au scénario émouvant qui la caractérisent, la série fait l\'unanimité auprès d\'un large public.', '.');

-- --------------------------------------------------------

--
-- Structure de la table `caracteriser`
--

DROP TABLE IF EXISTS `caracteriser`;
CREATE TABLE IF NOT EXISTS `caracteriser` (
  `IdLivre` int(11) NOT NULL,
  `idGenre` int(11) NOT NULL,
  PRIMARY KEY (`IdLivre`,`idGenre`),
  KEY `caracteriser_genre0_FK` (`idGenre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `caracteriser`
--

INSERT INTO `caracteriser` (`IdLivre`, `idGenre`) VALUES
(1, 1),
(2, 1),
(3, 1),
(5, 1),
(6, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(10, 2),
(13, 2),
(14, 2),
(15, 2),
(1, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(10, 3),
(14, 3),
(15, 3),
(1, 4),
(2, 4),
(9, 4),
(4, 5),
(2, 6),
(3, 6),
(7, 6),
(8, 6),
(10, 6);

-- --------------------------------------------------------

--
-- Structure de la table `est_ecrit`
--

DROP TABLE IF EXISTS `est_ecrit`;
CREATE TABLE IF NOT EXISTS `est_ecrit` (
  `idAuteur` int(11) NOT NULL,
  `IdLivre` int(11) NOT NULL,
  PRIMARY KEY (`idAuteur`,`IdLivre`),
  KEY `est_ecrit_livre0_FK` (`IdLivre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `est_ecrit`
--

INSERT INTO `est_ecrit` (`idAuteur`, `IdLivre`) VALUES
(1, 1),
(1, 2),
(2, 3),
(4, 4),
(3, 5),
(3, 6),
(3, 7),
(5, 8),
(6, 9),
(7, 10),
(8, 11),
(8, 12),
(9, 13),
(10, 14),
(11, 15);

-- --------------------------------------------------------

--
-- Structure de la table `est_produit`
--

DROP TABLE IF EXISTS `est_produit`;
CREATE TABLE IF NOT EXISTS `est_produit` (
  `idStudio` int(11) NOT NULL,
  `idAnime` int(11) NOT NULL,
  PRIMARY KEY (`idStudio`,`idAnime`),
  KEY `est_produit_anime0_FK` (`idAnime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `est_produit`
--

INSERT INTO `est_produit` (`idStudio`, `idAnime`) VALUES
(2, 1),
(5, 2),
(5, 3),
(3, 4),
(1, 5),
(1, 6),
(4, 7),
(4, 8),
(4, 9),
(3, 10),
(1, 11),
(5, 12),
(6, 13),
(7, 13),
(8, 14),
(8, 15),
(8, 16),
(9, 17),
(10, 18),
(11, 19),
(12, 20),
(8, 21);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `idGenre` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(400) NOT NULL,
  PRIMARY KEY (`idGenre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`idGenre`, `type`) VALUES
(1, 'Action'),
(2, 'aventure'),
(3, 'fantasy'),
(4, 'romance'),
(5, 'sport'),
(6, 'science-fiction');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `IdLivre` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(400) NOT NULL,
  `nom` varchar(400) NOT NULL,
  `publication` date NOT NULL,
  `nbVolume` int(11) NOT NULL,
  `resume` text NOT NULL,
  `page` varchar(500) NOT NULL,
  PRIMARY KEY (`IdLivre`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`IdLivre`, `image`, `nom`, `publication`, `nbVolume`, `resume`, `page`) VALUES
(1, 'SAO.png', 'Sword art online', '2009-04-10', 21, 'Un \"game over\" entraînera une mort réelle. Kirito a accepté cette certitude depuis qu\'il a décidé de combattre en \"solo\" à l\'intérieur de l\'Aincrad, cette gigantesque forteresse volante qui sert d\'univers au plus redoutable jeu en ligne connu sous le nom de Sword Art Online. Comme lui, des milliers de joueurs connectés, pris au piège dans ce monde virtuel où le moindre faux pas peut être fatal, luttent pour regagner leur liberté. Kirito veut conquérir seul les cent étages qui le mèneront au combat final, mais c\'est sans compter sur l\'obstination d\'Asuna une habile épéiste avec qui il va devoir s\'allier. Démarre alors une course effrénée pour survivre dans un monde où l\'art de l\'épée fait loi.', '.'),
(2, 'aw.jpg', 'Accel-world', '2009-02-10', 21, 'Haruyuki Arita est un gros garçon du premier cycle du secondaire, qui semble destiné à être toujours au bas de la chaîne alimentaire, cueillette de choix pour les intimidateurs de l’école. Un jour il rencontre Kuroyukihime, une jeune fille admirée de tous à l\'école, ce qui va bouleversée sa vie; elle le plonge dans le Brain Burst, un mystérieux programme informatique. C\'est dans le monde accéléré que Haruyuki décide de rejetter sa réalité déprimante et saisit la chance de devenir un Burst Linker, un chevalier pour protéger sa princesse!', '.'),
(3, 'cg.jpg', 'Code geass  lelouch of the rebellion', '2007-04-28', 5, '2017, dans l’Area 11, une colonie du Saint Empire de Britannia. Le jeune Lelouch Lamperouge se retrouve malgré lui pris au milieu d’une opération militaire et obtient le Geass, le pouvoir de soumettre quiconque à sa volonté. Héritier du trône britannien vivant sous le sceau du secret et nourrissant de la rancune envers son père, Lelouch va endosser le rôle de Zéro, un justicier Eleven qui veut détruire Britannia…', '.'),
(4, 'knb.jpg', 'Kuroko\'s basket', '2009-04-03', 30, 'Dans le collège Teikô, le club de Basketball était connu pour être l\'un des meilleurs du pays. Au sein de l\'établissement, cinq génies du sport étaient connus sous le nom de \"Génération des Miracles\". Toutefois, les cinq membres considéraient un sixième joueur comme un élément tout aussi prodigieux qu\'ils ne l\'étaient : le mystérieux joueur fantôme. À la fin de leur scolarité dans le collège de Teikô, les cinq prodiges se dispersèrent dans des lycées de renommés, désirant chacun mener leur équipe au sommet.\r\nC\'est ainsi que Tetsuya Kuroko, un jeune garçon à l\'apparence chétive, ayant la faculté de diriger ailleurs l\'attention des autres pour se rendre invisible, intègre le modeste lycée de Seirin, fraîchement construit et avide de dénicher de nouveaux talents pour ses divers clubs de sport.\r\nÀ son arrivée au lycée, la Coach de l\'équipe de Basket, Riko Aida prend les inscriptions des premières années. Kuroko est alors devancé à son inscription par l\'imposant Taïga Kagami venant tout droit des États-Unis, et désireux de pratiquer le Basketball au Japon.\r\nRapidement, les nouveaux arrivés dans le club de Basketball sont testés dans un match face à l\'équipe du lycée. Kuroko fait alors démonstration de son immense talent de passeur alors que Kagami étale son talent inné pour le basketball. Bien que tout les différencie, les deux joueurs finissent par sympathiser et deviennent une paire terriblement efficace.\r\nKagami se promet de devenir le meilleur joueur du pays en surpassant les cinq membres de la Génération des Miracles, alors que Kuroko décide de devenir l\'ombre de Kagami en l\'aidant à réaliser son rêve. Plus tard, les deux amis avouent qu\'ils désirent, avant tout, faire de l\'équipe de basket-ball de Seirin la meilleure du Japon.', '.'),
(5, 'ft.jpg', 'Fairy tail', '2006-12-01', 63, 'Dans le royaume de Fiore, il existe parmi le commun des mortels des hommes et des femmes qui manipulent la magie : ils sont appelés mages. Pour mieux les contrôler, des guildes ont été créées et mises sous la responsabilité du conseil des mages.\r\nOutre la nécessité de contrôler des mages, ce réseau a d’autres utilités. En effet, il permet de fournir un large choix de mages au client, et de nombreuses missions aux mages par le biais de petites annonces.\r\nParmi les nombreuses guildes, une d’entre elles fait particulièrement parler d’elle, que ce soit par les actes réalisés par ses membres, mais aussi et surtout pour les dégâts matériels provoqués par ces derniers à chaque mission qu’ils effectuent. Il s’agit de Fairy Tail.', '.'),
(6, 'mho.jpg', 'Monster hunter orage', '2015-03-04', 4, 'Depuis la mort de son maître Gurelli, Shiki, jeune chasseur, s\'est mis en tête de réaliser le rêve de ce dernier : trouver le légendaire dragon Miogaruna. Pour cela, il se rend dans la ville de son défunt maître, où il rencontre Eilee, une chasseuse solitaire et têtue qui accepte finalement de faire équipe avec lui. Une fantastique aventure débute pour trouver Miogaruna dans ce monde rempli de monstres et d\'aventuriers !', '.'),
(7, 'ez.jpg', 'Edens zero', '2018-10-10', 4, 'Rebecca, jeune B-Cubeuse en quête de millions de vues sur sa chaîne, et Happy, son chat bleu, débarquent sur l’île de Granbell, réputée pour son gigantesque parc d’attractions géré uniquement par des robots ! Ils rencontrent toutefois un humain, le seul de l’île  : Shiki, un jeune garçon un brin sauvage qui rêve d’autres horizons.  C’est alors que les employés mécaniques se montrent menaçants à l’égard des humains…', '.'),
(8, 'gin.jpg', 'Gintama', '2003-12-08', 77, 'À l\'ère Edo, le Japon est envahi par des extraterrestres appelés Amanto, des créatures de formes diverses, mais toutes plus ou moins humanoïdes. Ceux-ci parviennent à vaincre les samouraï après de longs combats. Dès lors, une futurisation radicale tranchant avec le décor classique du Japon se met en place et les Amanto interdisent le port du sabre en public. Malgré tout, il en reste qui préfèrent conserver leur bushido. Dans ce Japon complètement anachronique, subsistent ainsi des personnes qui refusent d\'abandonner leur sabre. Parmi eux, Gintoki Sakata, ancien samouraï excentrique qui aide un adolescent nommé Shinpachi Shimura, à sauver sa sœur Tae d\'un groupe d\'extraterrestres qui veulent la faire rejoindre une maison close. Impressionné par Gintoki, Shinpachi devient son apprenti et travaille avec lui comme homme à tout faire dans le but de payer le loyer de Gintoki.', '.'),
(9, 'bea.jpg', 'Beastars', '2016-09-08', 3, 'À l’institut Cherryton, herbivores et carnivores vivent dans une harmonie orchestrée en détail. La consommation de viande est strictement interdite, et les dortoirs sont séparés en fonction des régimes alimentaires. Tout pourrait aller pour le mieux dans le meilleur des mondes… mais la culture ne peut étouffer tous les instincts. Quand le cadavre de l’alpaga Tem est retrouvé déchiqueté sur le campus, les méfiances ancestrales refont surface !\r\nLegosi est la cible de toutes les suspicions. Parce qu’il était proche de Tem, parce qu’il est une des dernières personnes à avoir été vues en sa compagnie, et surtout… parce que c’est un loup. Pourtant, sensible et timide, il fait son possible pour réprimer ses instincts. Hélas, ses efforts sont vains face au vent de discrimination qui souffle sur le pensionnat…\r\nLe seul qui pourra apaiser ce climat de terreur est le Beastar, le leader de l’école. Pour l’heure, les candidats se préparent, les élections approchent... Le favori n’est autre que le cerf Louis, étoile incontestée du club de théâtre auquel appartient Legosi. Bien décidé à remettre les carnivores à leur place, il fait mine de ne pas craindre les crocs acérés du loup gris. Mais peut-être serait-il mieux avisé de ne pas le sous-estimer !', '.'),
(10, 'st.jpeg', 'Dr stone', '2018-04-04', 5, 'Taiju, un lycéen tokyoïte, est un jour victime d’un phénomène mystérieux : en une fraction de seconde, l’humanité entière est transformée en pierre ! Des milliers d’années plus tard, à son réveil, il décide de rebâtir la civilisation à partir de zéro avec son ami Senku.', '.'),
(11, 'gto.jpg', 'Great teacher onizuka', '1997-05-16', 25, 'Ancien chef de gang, Eikichi Onizuka, 22 ans, ne voit d\'abord dans l\'enseignement qu\'un moyen de se rapprocher de jeunes étudiantes. Un désir compréhensible quand, à son âge, on est encore puceau... Soutenu par sa secrétaire générale, détesté par son sous-directeur, le nouveau professeur ne fait pas l\'unanimité parmi ses collègues, mais qu\'importe : alors qu\'il se trouve dans une classe de fortes têtes, Onizuka, grâce à ses qualités humaines, gagne petit à petit la confiance de ses élèves et les pousse à devenir meilleurs. Des résultats que personne avant lui n\'avait pu atteindre.', '.'),
(12, 'gtopl.jpg', 'Gto paradise lost', '2014-04-14', 11, 'Le nouveau challenge d\'Eikichi Onizuka : la classe des stars du showbiz de l\'école Kisshô !   Le prof indigne fantasme déjà sur sa vie de rêve dans un paradis peuplé de starlettes à croquer… Sans se douter que ce qui l\'attend est un véritable cauchemar : la pire classe à problèmes dont la seule évocation terrifie les enseignants les plus blasés !', '.'),
(13, 'bl.jpg', 'Bleach', '2001-08-20', 74, 'Adolescent de quinze ans, Ichigo Kurosaki possède un don particulier : celui de voir les esprits. Un jour, il croise la route d\'une belle Shinigami en train de pourchasser une \"âme perdue\", un esprit maléfique qui hante notre monde et n\'arrive pas à trouver le repos. Mise en difficulté par son ennemi, la jeune fille décide alors de prêter une partie de ses pouvoirs à Ichigo, mais ce dernier hérite finalement de toute la puissance du Shinigami. Contraint d\'assumer son nouveau statut, Ichigo va devoir gérer ses deux vies : celle de lycéen ordinaire, et celle de chasseur de démons..', '.'),
(14, 'nar.jpg', 'Naruto', '1999-09-20', 72, 'Naruto, gamin espiègle et véritable cancre, ne rate jamais une occasion pour faire le pitre. Orphelin, il a toujours été mis à l\'écart par les habitants du village caché de Konoha, son village d\'origine. Il souffre d\'une grande solitude et ne comprend pas ce rejet jusqu\'au jour où il apprend que le démon renard qui a ravagé autrefois le village est scellé en lui ...', '.'),
(15, 'op.jpg', 'One piece', '1997-07-22', 92, 'L\'histoire débute dans un village de pêcheurs où Luffy, veut se faire engager par le capitaine Shanks. Afin de monter sa bravoure, il se fait une cicatrice sur la joue. Par erreur, il mange un fruit du démon qui le rend élastique mais aussi incapable de nager, ce qui ne va pas faciliter son rêve de devenir pirate.\r\n10 ans plus tard, Luffy part à l\'aventure pour découvrir le trésor mythique : le One Piece, afin de devenir meilleur que son modèle Shanks. Ce dernier lui a laissé son chapeau, à la condition qu\'il le lui rende quand il sera devenu le seigneur des pirates.', '.');

-- --------------------------------------------------------

--
-- Structure de la table `qualifier`
--

DROP TABLE IF EXISTS `qualifier`;
CREATE TABLE IF NOT EXISTS `qualifier` (
  `idAnime` int(11) NOT NULL,
  `idGenre` int(11) NOT NULL,
  PRIMARY KEY (`idAnime`,`idGenre`),
  KEY `qualifier_genre0_FK` (`idGenre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `qualifier`
--

INSERT INTO `qualifier` (`idAnime`, `idGenre`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(4, 2),
(10, 2),
(12, 2),
(15, 2),
(16, 2),
(18, 2),
(20, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(10, 3),
(12, 3),
(14, 3),
(15, 3),
(16, 3),
(18, 3),
(20, 3),
(1, 4),
(4, 4),
(13, 4),
(19, 4),
(7, 5),
(8, 5),
(9, 5),
(4, 6),
(5, 6),
(6, 6),
(11, 6),
(13, 6),
(20, 6);

-- --------------------------------------------------------

--
-- Structure de la table `studio`
--

DROP TABLE IF EXISTS `studio`;
CREATE TABLE IF NOT EXISTS `studio` (
  `idStudio` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(400) NOT NULL,
  `historique` text NOT NULL,
  `page` varchar(500) NOT NULL,
  PRIMARY KEY (`idStudio`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `studio`
--

INSERT INTO `studio` (`idStudio`, `nom`, `historique`, `page`) VALUES
(1, 'Sunrise', 'Sunrise Inc. (Kabushiki gaisha Sanraizu) est un studio d\'animation japonaise, fondé en septembre 1972 et filiale depuis 1994 de Bandai.\r\n\r\nLe studio a produit et animé de nombreuses séries comme Nicky Larson, Vision d\'Escaflowne, Cowboy Bebop, Inu-Yasha, Code Geass mais aussi à l\'origine de la grande saga des Gundam.\r\n\r\n', '.'),
(2, 'Studio Deen', 'Hiroshi Hasegawa, employé chez Sunrise, fonde Studio Deen le 13 mars 1975. Jusqu\'à la fin de 1981, le studio fait de la sous traitance pour d\'autres studios comme Shinei Douga notamment sur les films de Doraemon. En 1981, il collabore avec Studio Pierrot sur Lamu, série inspiré d\'un manga de Rumiko Takahashi. Après le départ de Mamoru Oshii de la réalisation de la série en 1984, Studio Deen reprend les rênes de la série et la mène à son terme en 1986. Par la suite, le studio recollabora avec Rumiko Takahashi en adaptant ses mangas Maison Ikkoku et Ranma 1/2.\r\n\r\nLe studio collabore également avec le réalisateur Mamoru Oshii notamment sur Tenshi no tamago et sur Patlabor.\r\n\r\nLe studio fait sous-traiter une partie de sa production grâce à sa filiale chinoise et sa récente collaboration avec le studio coréen Echo Animation.', '.'),
(3, 'A-1 Pictures', 'Aniplex, filiale de Sony Music Japan, participe régulièrement à la production de séries d\'animation depuis sa création en 1995. Dans la première moitié des années 2000, le nombre de séries animées produites est en pleine explosion, d\'où la possibilité d\'Aniplex d\'animer ses propres séries au lieu de passer par d\'autres studios. C\'est dans ce but qu\'est créé A-1 Pictures en mai 2005.\r\n\r\n', '.'),
(4, 'Production I.G', 'Production I.G., Inc. ( Kabushiki-gaisha Purodakushon Ai Ji) est un studio de production de films et de séries d\'animation japonaise créé le 15 décembre 1987 sous le label I.G Tatsunoko avant de devenir Production I.G en 1993. Le nom provient des initiales des deux créateurs : Mitsuhisa Ishikawa et Takayuki Gotou.', '.'),
(5, 'Ufotable', 'Ufotable ( Yuufouteburu yûgen gaisha?) est un studio d\'animation basé à Nakano, au Japon. Le studio a été fondé en octobre 2000 et est principalement connu pour ses animations en pâte à modeler (claymation) telles que les génériques de fin de Futakoi alternative, Ninja nonsense, Coyote ragtime show, Gakuen utopia Manabi Straight! et Tales of Symphonia ainsi que les avertissements de début de film de chaque Kara no kyoukai.', '.'),
(6, 'Gainax', 'Gainax Co., Ltd. ( Kabushiki kaisha Gainakkusu?) est un studio de films et séries d\'animation japonais fondé le 24 décembre 1984.\r\n\r\nL\'un des fondateurs, Hideaki Anno est le créateur de la célèbre série Neon Genesis Evangelion, une série animée qui a gagné plusieurs récompenses dans le domaine des anime. Les studios Gainax ont également réalisé des jeux vidéo dont la série des Princess Maker sur Super Famicom.', '.'),
(7, 'Tatsunoko Production', 'Tatsunoko Production Co., Ltd. ( Kabushiki gaisha Tatsunoko Purodakushon) est un studio d\'animation japonais, fondé en 1962 par Tatsuo Yoshida et ses frères Kenji et Toyoharu.\r\n\r\nSpécialisé dans les séries télévisées, ce studio a produit de nombreux succès, tels que Time Bokan , Gatchaman et Speed Racer.', '.'),
(8, 'Pierrot Co.', 'Le studio Pierrot a été longtemps spécialisé dans le magical girl avec des séries à succès comme Creamy, merveilleuse Creamy, Fancy Lala ou plus récemment Tokyo Mew Mew. Mais depuis le début des années 2000, le studio se tourne davantange vers des productions plus shonen comme Great Teacher Onizuka, Bleach, Hikaru no go, Beelzebub ou encore Naruto.', '.'),
(9, 'Shin-Ei Animation', 'Shin-Ei Animation Co., Ltd. ( Shin\'ei Doga Kabushiki-gaisha) est une entreprise d\'animation japonaise appartenant à TV Asahi Corporation. Fondé à Tokyo en 1976, il est le successeur de A Production ( Ei Purodakushon), une précédente entreprise risquée d\'animation de son fondateur, Daikichiro Kusube, qui était auparavant animateur pour Toei Animation. Shin-Ei est connu pour être le studio d\'animation de deux des séries télévisées les plus populaires: Doraemon et Crayon Shin-chan, qui sont encore diffusées à la télévision japonaise depuis 1979 et 1992 respectivement.', '.'),
(10, 'Toei Animation', 'Toei Animation Co., Ltd. ( Toei animeshon kabushiki-gaisha) est un studio de production de films et séries d\'animation japonais fondé le 23 janvier 1948 sous le nom de Nihon Doga. C\'est une filiale de la société cinématographique japonaise Toei depuis juillet 1956.\r\n\r\nLa première production de Toei Animation est le film Le Serpent blanc, sorti dans les salles nippones en 1958. Depuis, le studio a produit de nombreux films et séries dont plusieurs adaptations des travaux de Go Nagai (Goldorak, Mazinger…), de Leiji Matsumoto (Albator, Galaxy Express 999…), de Masami Kurumada (Saint Seiya, Fuma no Kojiro, Ring ni Kakero…), d\'Akira Toriyama (Docteur Slump, Dragon Ball…), de Naoko Takeuchi (Sailor Moon) et de Eiichiro Oda (One Piece).', '.'),
(11, 'Orange', 'Orange Co., Ltd. ( Yugen-gaisha Orenji) est un studio d\'animation japonaise situé à Musashino dans la préfecture de Tokyo, au Japon, spécialisé dans la production d\'animation 3D1. Le studio est connu pour son style de réalisation et de 3D exagéré, qui diffère du mouvement traditionnel que l\'on retrouve souvent dans les œuvres d\'images de synthèse.', '.'),
(12, 'TMS Entertainement', 'TMS Entertainment Limited Kabushiki-gaisha Tomusu Entateinmento), est une entreprise japonaise, filiale de Sega Sammy, qui est à la fois un studio d\'animation et une chaîne de salle d\'arcade.\r\n\r\nElle est issue de la fusion en 1995 de deux filiales de Sega: Tokyo Movie Shinsha ( Tokyo Mubi Shinsha), un studio d\'animation fondé en 1964 et Kyokuichi , une ancienne entreprise textile créée en 1946 qui s\'est reconvertie en chaîne de salle d\'arcade.', '.');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(400) NOT NULL,
  `mdp` varchar(400) NOT NULL,
  `mail` varchar(400) NOT NULL,
  `idGenre` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUtilisateur`),
  KEY `utilisateurs_genre_FK` (`idGenre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`idUtilisateur`, `pseudo`, `mdp`, `mail`, `idGenre`) VALUES
(2, 'goldman', '$2y$10$dpummp6N6KHumGk4OQuDNOGZ3jj09aNo2k8eyjC3ECG4jOJQ.zJAe', 'jjg@laposte.net', 3);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adapter`
--
ALTER TABLE `adapter`
  ADD CONSTRAINT `adapter_anime_FK` FOREIGN KEY (`idAnime`) REFERENCES `anime` (`idAnime`),
  ADD CONSTRAINT `adapter_livre0_FK` FOREIGN KEY (`IdLivre`) REFERENCES `livre` (`IdLivre`);

--
-- Contraintes pour la table `caracteriser`
--
ALTER TABLE `caracteriser`
  ADD CONSTRAINT `caracteriser_genre0_FK` FOREIGN KEY (`idGenre`) REFERENCES `genre` (`idGenre`),
  ADD CONSTRAINT `caracteriser_livre_FK` FOREIGN KEY (`IdLivre`) REFERENCES `livre` (`IdLivre`);

--
-- Contraintes pour la table `est_ecrit`
--
ALTER TABLE `est_ecrit`
  ADD CONSTRAINT `est_ecrit_auteur_FK` FOREIGN KEY (`idAuteur`) REFERENCES `auteur` (`idAuteur`),
  ADD CONSTRAINT `est_ecrit_livre0_FK` FOREIGN KEY (`IdLivre`) REFERENCES `livre` (`IdLivre`);

--
-- Contraintes pour la table `est_produit`
--
ALTER TABLE `est_produit`
  ADD CONSTRAINT `est_produit_anime0_FK` FOREIGN KEY (`idAnime`) REFERENCES `anime` (`idAnime`),
  ADD CONSTRAINT `est_produit_studio_FK` FOREIGN KEY (`idStudio`) REFERENCES `studio` (`idStudio`);

--
-- Contraintes pour la table `qualifier`
--
ALTER TABLE `qualifier`
  ADD CONSTRAINT `qualifier_anime_FK` FOREIGN KEY (`idAnime`) REFERENCES `anime` (`idAnime`),
  ADD CONSTRAINT `qualifier_genre0_FK` FOREIGN KEY (`idGenre`) REFERENCES `genre` (`idGenre`);

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `utilisateurs_genre_FK` FOREIGN KEY (`idGenre`) REFERENCES `genre` (`idGenre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
