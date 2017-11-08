#!/bin/sh

# Install Wiki-JS

curl -sSo- https://wiki.js.org/install.sh | bash

# Start WikiJS
node wiki start
