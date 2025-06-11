# Inception
This project is about dockers.
It contains the initialization scripts and Dockerfiles for three docker images (WordPress, NGINX & MariaDB). Each configured separately but all three containers will be ran on the same network using docker compose through the .yaml file.
There are local volumes configured for the mariadb data and the wordpress data to be stored localy and not be lost once the containers are down. ("/data/wordpress_db/", "/data/wordpress_files/")
The user credentials are stored in the /inception/srcs/.env file.
All services combined will host a WordPress page on the web.
The docker images are build on the penultimate verions of debian (debian:bullseye)
