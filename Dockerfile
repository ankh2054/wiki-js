FROM alpine:3.6

ENV ALPINE_VERSION=3.6

# Install needed packages. Notes:
#   * nodejs: Node.js and NPM 
#   * mongodb: MongoDB to act as DB.
#   * Git: Git to store wiki-js documents
#   * Curl: Curl for downloads.


ENV PACKAGES="\
  nodejs \
  mongodb \
  git \
  curl \
"

RUN apk --update add --no-cache $PACKAGES  \
    && echo 



# Entrypoint
ADD start.sh /
RUN chmod u+x /start.sh
