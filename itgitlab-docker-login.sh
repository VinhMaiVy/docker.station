#!/bin/bash
set -e

read -p "Qorvo itgitlab login:" qlogin
read -s -p "Qorvo itgitlab password:" qpasswd
echo "\n"


docker login --username $qlogin --password $qpasswd itgitlab.corp.qorvo.com:5050
