# Script-SIG-POC
1) Récupérer le code source et exécuter le fichier "create_folder.bat"

2) Exécuter la commande suivante pour créer les images et conteneurs de Postgis et Geoserver

docker compose -f docker-compose-postgis-geoserver.yml up -d

3) Après avoir préparer les données dans Postgis avec Qgis et préparer la couche dans Geoserver aller sur le localhost de nginx 






-------------- A supprimer + tard
Créer un dossier serveurNode et dedans lancer la commande de création d'un serveur node avec http-server

npm i http-server

Ensuite réaliser la commande http-server -p 9091 --cors=Authorization

Ensuite aller sur l'url http://172.22.144.1:9091
