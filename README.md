![License MIT](https://img.shields.io/badge/license-MIT-blue.svg)


# WikiJS

WikiJA-docker sets up a container running WikiJS  based on variables provided. It will automatically start wikiJS using the ENV variables provided. 


## To Build from GIT

```docker build https://github.com/ankh2054/wiki-js.git -t wikijs```


## To Start WikiJS container

### ENV Variables

* **WIKI_HOST** = Full public path to the site, without the trailing slash
* **WIKI_TITLE** = Title of the WIKI
* **WIKI_PORT** = Port for WikiiJS to listen on

 ```
 docker run --name wikijs -d \
 -e VIRTUAL_HOST=wikijs.domain.com \
 -e WIKI_HOST=http://wikijs.domain.com \
 -e WIKI_TITLE="Wiki Title" \
 -e WIKI_PORT=3000 \
 wikijs \
 
 ```
 
# NGINX-PROXY

nginx-proxy sets up a container running nginx and [docker-gen][1].  docker-gen generates reverse proxy configs for nginx and reloads nginx when containers are started and stopped.

See [Automated Nginx Reverse Proxy for Docker][2] for why you might want to use this.

### Nginx-proxy Usage

To run it:

    $ docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro etopian/nginx-proxy



[1]: https://github.com/etopian/docker-gen
[2]: http://jasonwilder.com/blog/2014/03/25/automated-nginx-reverse-proxy-for-docker/


## To Do

1. Create github ENV variable to auto configure github account within config.yml
2. WikiJS does not automatically create admin user, so you need to frsit run the following to create.
 * Automatically create admin user and add to MongoDB database.
 * Add Github variables to auto create github integration for article creation.
