#!/usr/bin/env bash

# grpc-json-proxy
docker run --name grpc-json-proxy -d -p 7001:7001 vincenthcui/grpc-json-proxy

# mysql
docker run -v "/Users/linqiong/workspace/docker/mysql/data":/var/lib/mysql \
        --user 1000:1000 \
	--name mysql \
        -p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=basebit \
	-e MYSQL_USER=bb_web \
	-e MYSQL_PASSWORD=BBWeb@123 \
	-d mysql:5.7.30



