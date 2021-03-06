#!/bin/bash

VERSION=$1
if [ -z "$VERSION" ]; then
  VERSION=1
fi

docker run --name mysql-wherehows -d -e MYSQL_ROOT_PASSWORD=wherehows -p 3306:3306 wherehows/mysql-wherehows:$VERSION
