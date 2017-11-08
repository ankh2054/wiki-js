# wiki-js


To Build from GIT

```docker build https://github.com/ankh2054/wiki-js.git -t wikijs```


## Todo:
1. Configure Mongodb. (mongod starts config, but compains about missing /data/db.)
2. Instasll default Mongodb database.
3. INSTALL NGINX-PROXY
4. Create DNS entry for wikijs, so that nginx-proxy can point DNS entry to container (container needs to expose port 80)
5. Ensure that wikijs is runninfg on port 80
6. Configure wikijs to point to GIt using credentials or ssh key (do manually, as security risk to host on github)

