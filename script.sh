#!/bin/bash

# #environment variables
# JENKINS_ADMIN_ID=admin 
# JENKINS_ADMIN_PASSWORD=password 
# CONJUR_ACCESS_TOKEN=$ACCESS_TOKEN 
# JENKINS_URL="http://localhost:8083" 
# CONJURACCOUNT="myConjurAccount" 
# APPLIANCEURL="http://conjur_server" 
# SERVICEID="jenkins"  
# JWT_AUDIENCE="jenkins-server"
# CONJUR_CREDENTIALS_PLUGIN=conjur-credentials:1.0.15 

#build dockerfile
docker build -t jenkins:jcasc .

docker run --name jenkins_jcasc --rm -p 8085:8080 \
--env JENKINS_ADMIN_ID=admin \
--env JENKINS_ADMIN_PASSWORD=password \
--env CLOUD_API_KEY=$CLOUD_API_KEY \
--env JENKINS_URL=${JENKINS_URL} \
--env CONJURACCOUNT=${CONJURACCOUNT} \
--env APPLIANCEURL=${APPLIANCEURL} \
--env SERVICEID=${SERVICEID}  \
--env JWT_AUDIENCE=${JWT_AUDIENCE} \
# --env CONJUR_CREDENTIALS_PLUGIN=${CONJUR_CREDENTIALS_PLUGIN} \
jenkins:jcasc \
