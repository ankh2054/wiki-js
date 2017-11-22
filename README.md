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
 -e WIKI_HOST=http://wikijs.domain.com \
 -e WIKI_TITLE="Wiki Title" \
 -e WIKI_PORT=3000 \
 wikijs \
 
 ```
 



## To Do

1. Create github ENV variable to auto configure github account within config.yml
2. WikiJS does not automatically create admin user, so you need to frsit run the following to create.
 * Stop WikiJS ```supervisorctl stop wikijs```
 * Start new configuration ```node wiki configure```
 * Access you WikiJs abd follow instructions & Save.
 * Restart WikiJS ```supervisorctl start wikijs```
 * Access WikiJS and grant Guest Access.
