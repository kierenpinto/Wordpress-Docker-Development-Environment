Wordpress Development Environment in Docker (Docker-Compose Required)
==

Use this repository to spin up a wordpress development environment in docker.
First copy the docker-compose.yml file in an empty folder.
Make sure that docker and docker compose are installed.

Control of the containers:
To start, call `docker-compose up -d`.
To stop, call `docker-compose down`.

Add the following lines to <i> wp-config.php </i> to enable site to work from any domain. Do not use in production. 
```
$url= $_SERVER['HTTP_HOST'];
define( 'WP_HOME', $url );
define( 'WP_SITEURL', $url );
```