@echo off
call mvn clean package
call docker build -t com.madhan.di/SpringMVC .
call docker rm -f SpringMVC
call docker run -d -p 9080:9080 -p 9443:9443 --name SpringMVC com.madhan.di/SpringMVC