#!/usr/bin/env bash

#server=$(./node_modules/.bin/bower)
server=$(which http-server)

: ${HOST:=0.0.0.0}
: ${PORT:=8000}
: ${RPC_URL:=http://localhost:8545}

echo $HOST:$PORT $RPC_URL

cat ./app/app.js.template | sed "s#{WEB3_RPC_URL}#$RPC_URL#;" > ./app/app.js

$server ./app -a $HOST -p $PORT
