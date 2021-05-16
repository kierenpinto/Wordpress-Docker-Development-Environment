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

## wp-install-cli

This is used as an install script when the container stack is stood up with docker-compose up. By default when the container is run, the install.sh script is run. To start a generic console session with which to use the wp-cli use: 
` docker-compose run wp-cli bash `

Then refer to the wp cli documentation for how to run comands.

To install the theme run 

```
docker-compose run wp-cli bash
wp import ../themeunittestdata.wordpress.xml --authors=create
```

### Notes

You must consider the fact that Alpine (wp-cli) and Debain (wordpress) have different default uids for http/www-data. As such we must force alpine to use group 33 (xfs). We can inspect the uids corresponding to names in the /etc/passwd file of the host OS and in each of the containers.
Refer to the [dockerhub wordpress site](https://hub.docker.com/_/wordpress) on *Running as a arbritary User* for more information. 

### Changing the wp-install-cli docker image

If the image is changed in any way ie anything in the folder changes, you will need to rebuild the image. The easiest way of doing this is:
```
docker-compose build
docker container prune
docker image prune
```