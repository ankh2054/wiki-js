# wiki-js


## To Build from GIT

```docker build https://github.com/ankh2054/wiki-js.git -t wikijs```

## To start NGING proxy

```docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro etopian/nginx-proxy```


## To Start WikiJS container

### ENV Variables

* **WIKI_HOST** = Full public path to the site, without the trailing slash
* **WIKI_TITLE** = Title of the WIKI
* **WIKI_PORT** = Port for WikiiJS to listen on

 ```
 docker run --name wikijs -d \
 -e VIRTUAL_HOST=wikijs.domain.com \
 -e WIKI_HOST=wikijs.domain.com \
 -e WIKI_TITLE="Wiki Title" \
 -e WIKI_PORT=3000 \
 wikijs \
 
 ```
 



