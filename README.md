# wiki-js


To Build from GIT

```docker build https://github.com/ankh2054/wiki-js.git -t wikijs```

To start NGING proxy

```docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro etopian/nginx-proxy```

## Todo:
1. Configure Mongodb. (mongod starts config, but compains about missing /data/db.)
Below might be useful to create database.
```
mongo <<EOF
use wiki
quit()
EOF
```
2. Instasll default Mongodb database.
3. INSTALL NGINX-PROXY
4. Create DNS entry for wikijs, so that nginx-proxy can point DNS entry to container (container needs to expose port 80)
5. Ensure that wikijs is runninfg on port 80
6. Configure wikijs to point to GIt using credentials or ssh key (do manually, as security risk to host on github)

