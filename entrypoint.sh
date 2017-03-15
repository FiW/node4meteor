#!/bin/sh

if [ -d /bundle ]; then
    cd /bundle
    tar xzf *.tar.gz
    cd /bundle/bundle/programs/server/
    yarn
    cd /bundle/bundle/
fi

export PORT=${PORT:-80}

echo "=> Starting meteor app on port:$PORT"
node main.js