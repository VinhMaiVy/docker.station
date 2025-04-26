#!/bin/bash
set -e

read -p "Qorvo itgitlab login:" qlogin
read -s -p "Qorvo itgitlab password:" qpasswd
echo "\n"

kubectl create secret docker-registry regcred \
  --docker-server=itgitlab.corp.qorvo.com:5050 \
  --docker-username=$qlogin \
  --docker-password=$qpasswd
