#!/usr/bin/env bash
set -e

echo "${DOCKER_PASSWORD}" | docker login --username alexeysavenkov --password-stdin
docker tag maluuba/tomcat7-java8 alexeysavenkov/web1066-the-app:latest
docker push alexeysavenkov/web1066-the-app:latest
