#!/bin/bash

# VARIABLES:
# serverKA
# severName
# bddName
# bddType
# bemElements
# models
# behaviors
# charteKA, primary, secondary, ternary, typos



echo Voulez-vous associer un serveur à votre projet ?
read serverKA
if [ "${serverKA,,}" == 'o' ] || [ "${serverKA,,}" == 'oui' ] || [ "${serverKA,,}" == 'y' ] || [ "${serverKA,,}" == 'yes' ]
	then
		echo Très bien! Un système de login sécurisé par token unique est configuré par défaut pour tout serveur implémenté
		echo De plus, quel serveur souhaitez-vous associer à votre applicaiton web ? \(1.NodeJS/Express, 2. RubyOnRails, 3.Apache, 4.PHP ?\)
		read serverName
		tmp="Vous avez choisi .."
		case $serverName in 
			1)
				echo $tmp NodeJS/Express
			;;
			2)
				echo $tmp RubyOnRails
			;;
			3)
				echo $tmp Apache
			;;
			4)
				echo $tmp PHP
			;;
			*)
				echo Choix incorrecte, veuillez faire un choix entre 1 et 4
			;;
		esac;
		echo De plus! Veuillez choisir un type de Base de Donnée ? \(1.simple fichier, 2.NoSQL, 3.RDBMS, 4.Tableur ?\)
		read bddName
		case $bddName in 
			1)
				echo Vous avez choisi une BDD sur un simple fichier
				echo Maintenant, dans quelle format ? \(1.JSON, 2.CVS,3.....\)
				read bddType	
			;;
			2)
				echo Vous avez choisi une BDD de type NoSQL 
				echo Maintenant, choisir le type de NoSQL ? \(1.MongoDB, 2.Redis,3.....\)
				read bddType	
			;;
			3)
				echo Vous avez choisi une BDD de type relation \(RDBMS\) 
				echo Maintenant, choisir le type de donnée SQL ? \(1.MySQL, 2.SQLServer, 3.PostGre, 4....\)
				read bddType	
			;;
			4)
				echo Vous avez choisi une BDD de type tableur 
				echo Maintenant, choisir le type de tableur ? \(1.GSheet, 2....\)
				read bddType	
			;;
			*)
				echo Choix incorrecte, veuillez faire un choix entre 1 et 4
				bddType=false
			;;
		esac;
		echo Aussi, si vous avez déjà en tête les noms des composants BEM qui composeront vos pages web, veuillez écrire/lister le nom des Blocs BEM, séparés par un ";"
		read bemElements
		availableModels=("Post" "Product" "Order")
		availableFunctionnalities=("Comment" "Like" "Share" "Buy" "Reserve" "Bid" "Analytics")
		echo Enfin, aurez-vous besoin d\'un Modèle particulier ? \(1.Post, 2.Product, 3.Order, ...10.*NomDuModels, ....\)
		echo Si vous en souhaitez plusieurs, veuillez les séparer par des \'\;\'
		read models
		models=($(echo "$models" | tr ';' '\n'))
		echo "${models[2]}"
		for model in "${models[@]}"
		do
			case $model in 
				2)#Product, qui peut accueillir les fonctionnalités exclusives: ecommerce(order), reservation(reserve), encher(bid), ....
					echo cjijcsjoicsiosnoinoincsidsn
				;;
				1O)
					echo cjijcsjoicsiosnoinoincsidsn
				;;
				*)
					echo Certains models particuliers pourront peutêtre avoir des fonctionnalités spécifiques qui seraient exclusif à ce models \(portent une étoile en début de nom de model\)
				;;
			esac
			models[$model-1]=${availableModels[$model-1]}
			echo !!!!!!!!!!!!!!!!!!! ${models[$model-1]} !!!!!!!!!!!!!
			echo ""
			echo Vous avez choisi le model \'${availableModels[$model-1]}\'
			echo pour celui-ci, souhaitez-vous y ajouter des fonctionnalitées ? 
			echo Si oui lesquels ? \(1.Commentaires, 2.Likes, 3.Share, 4.Buy, 5.Reserve, 6.Bid, 7.Analytic, .....\)
			echo Si vous en souhaitez plusieurs, veuillez les séparer par des \'\;\'
			echo Sinon ne rien entrer \(taper juste \'Enter\'\)
			echo ""
			read behaviors
			behaviors=($(echo "$behaviors" | tr ';' '\n'))
			echo "${behaviors[2]}"
			for behavior in "${behaviors[@]}"
			do
				case $behavior in 
					1)
						echo Ajouter la foncitonnalité \'Commentaires\':
					;;
					2)
						echo Ajouter la foncitonnalité \'Likes\':
					;;
					3)
						echo Ajouter la foncitonnalité \'Share\':
					;;
					4)
						echo Ajouter la foncitonnalité \'Analytic\':
					;;
					*)
						echo La valeur entrée \'${behavior}\' ne correspond à aucune fonctionnalité prédéfinie, désolé
				esac
				echo Ajouter la foncitonnalité:=\> \'${availableFunctionnalities[$behavior-1]}\':
				behaviors[$behavior-1]=${availableFunctionnalities[$behavior-1]}
				echo !!!!!!!!!!!!!!!!!!! ${behaviors[$behavior-1]} !!!!!!!!!!!!!
			done
					
		done

	fi
echo ""
echo Voulez-vous définir une charte graphique \(couleurs, typographie, dimensions\) ?
echo Ceci afin dans un 1er temps de produire une guide line CSS qui sera enregistrer dans la racine du dossier sous forme de PDF, puis dans un 2nd temps d\'intégrer ces éléments dans le code sass de votre application ?
read charteKA
if [ "${charteKA,,}" == 'o' ] || [ "${charteKA,,}" == 'oui' ] || [ "${charteKA,,}" == 'y' ] || [ "${charteKA,,}" == 'yes' ]
	then
		echo Veuillez entrer dans l\'ordre les 3 valeurs des couleurs de votre charte graphique:
		read primary
		read secondary
		read ternary 
		echo Veuillez entrer dans l\'ordre les 2 ou 3 valeurs des typographies à intégrer dans la charte grpahique de votre application web:
		read typos
		typos=($(echo "$typos" | tr ';' '\n'))
		echo "${typos[2]}"
	fi
#reactrc g
cd frontend_react/public
backendrc g
cd backend
echo ????????????????"${models}"?????????????????
for model in "${models[@]}"
do
	echo copying "${model} Model"
	cp _/models/"${model^}.js" ./models/"${model^}.js" 
	cp _/controllers/"${model,,}.js" ./controllers/"${model,,}.js" 
	cp _/routes/"${model,,}.js" ./routes/"${model,,}.js" 
done
