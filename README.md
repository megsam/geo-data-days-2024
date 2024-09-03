# Geo Data Days 2024 Docker Images
This repository contains Docker images for the Geo Data Days 2024 Proof of Concept (POC). It includes images for Nginx, GeoServer, and PostGIS.
## Available Docker Images
The Docker images are hosted on Docker Hub under the `megsam/geo-data-days-2024` repository. The following tags are available:
- **Nginx**: `geodatadays2024-nginx`
- **GeoServer**: `geodatadays2024-geoserver`
- **PostGIS**: `geodatadays2024-postgis`
## Pulling the Docker Images
To pull the Docker images from Docker Hub, use the following commands:
```sh
docker pull megsam/geo-data-days-2024:geodatadays2024-nginx
docker pull megsam/geo-data-days-2024:geodatadays2024-geoserver
docker pull megsam/geo-data-days-2024:geodatadays2024-postgis
```
## Running the Docker Containers
To run the containers using Docker Compose, execute the following command:
```sh
docker compose -f docker-compose-postgis-geoserver.yml up -d
```
This command starts the services in detached mode (`-d`).
## Accessing the Services
- **Nginx**: Access the web application by navigating to [http://localhost:8081](http://localhost:8081) in your web browser.
- **GeoServer**: Access the GeoServer web interface at ([http://localhost:8080/geoserver/web/](http://localhost:8080/geoserver/web/)).
- **PostGIS**: Connect to the PostGIS database at `localhost:5432` using your preferred PostgreSQL client with the credentials you provided.
## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
## Contact
For questions or issues, please contact [Samy Meguellati](mailto:samy.meguellati@capgemini.com) or open an issue on this repository.git add . 
