#!/bin/sh

# Install Wiki-JS
install_wikijs() {
    
	VERSION=$(curl -L -s -S https://beta.requarks.io/api/version/stable)

	echo "[1/3] Fetching latest build..."
	curl -L -s -S https://github.com/Requarks/wiki/releases/download/v$VERSION/wiki-js.tar.gz | tar xz -C .

	echo "[2/3] Fetching dependencies..."
	curl -L -s -S https://github.com/Requarks/wiki/releases/download/v$VERSION/node_modules.tar.gz | tar xz -C .

	echo "[3/3] Removing sampleconfig file..."
	rm  config.sample.yml

	# Create Wikijs user with no login or password
	adduser -h /var/wiki -D -S  wikijs

	# Correct permissions on /var/wiki
	chown -R wikijs:nogroup /var/wiki

}


# Configure MongoDB
configure_mongodb() {
    # Create the MongoDB and assign permissions  
	mkdir -p /data/db
	chown -R mongodb:mongodb /data/db

	# Start mongoDB
	mongod --fork --logpath /var/log/mongod.log

# Create mongoDB Database
mongo <<EOF
use wiki
quit()
EOF

	# Stop the mongoDB service
	mongod --dbpath /data/db --shutdown
	chown -R mongodb:mongodb /data/db

}

# Do the stuff
install_wikijs
configure_mongodb


# Supervisor
# Start Supervisor 
echo "Starting Supervisor"
/usr/bin/supervisord -n -c /etc/supervisord.conf



