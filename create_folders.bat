@echo off
REM Ce script crée un dossier vide s'il n'existe pas

REM Définir le nom du dossier à créer
set "dossierPostGis=postgis_data"
set "dossierGeoserver=geoserver_data"

REM Vérifier si le dossier existe
if not exist "%dossierPostGis%" (
    REM Créer le dossier s'il n'existe pas
    mkdir "%dossierPostGis%"
    echo Le dossier "%dossierPostGis%" a été créé avec succès.
) else (
    echo Le dossier "%dossierPostGis%" existe déjà.
)

REM Vérifier si le dossier existe
if not exist "%dossierGeoserver%" (
    REM Créer le dossier s'il n'existe pas
    mkdir "%dossierGeoserver%"
    echo Le dossier "%dossierGeoserver%" a été créé avec succès.
) else (
    echo Le dossier "%dossierGeoserver%" existe déjà.
)
pause