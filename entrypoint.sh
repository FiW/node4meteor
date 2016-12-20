#!/bin/sh

if [ -d /bundle ]; then
    cd /bundle
    tar xzf *.tar.gz
    cd /bundle/bundle/programs/server/
    npm i
    cd /bundle/bundle/
fi

export PORT=${PORT:-80}

echo "=> Starting meteor app on port:$PORT"
node main.js