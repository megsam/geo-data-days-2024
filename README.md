# Script-SIG-POC

Réaliser cette commande pour créer les images et conteneurs de Postgis et Geoserver

docker compose -f docker-compose-postgis-geoserver.yml up -d

Après avoir préparer les données dans Postgis avec Qgis et préparer la couche dans Geoserver 

Créer un dossier serveurNode et dedans lancer la commande de création d'un serveur node avec http-server

npm i http-server

Ensuite réaliser la commande http-server -p 9091 --cors=Authorization

Ensuite aller sur l'url http://172.22.144.1:9091
