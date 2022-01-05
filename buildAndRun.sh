#!/bin/sh
mvn clean package && docker build -t com.madhan.di/SpringMVC .
docker rm -f SpringMVC || true && docker run -d -p 9080:9080 -p 9443:9443 --name SpringMVC com.madhan.di/SpringMVC