#!/bin/bash

repo=~/Downloads/setup
home=~/
curuser=sirfelipe

mkdir -p $repo

cd $repo

echo "Atualizando..."
add-apt-repository ppa:linuxuprising/java -y
apt-get remove docker docker-engine docker.io

apt-get update && apt-get upgrade -y && apt-get install apt-transport-https ca-certificates curl software-properties-common openjdk-11-jdk oracle-java11-installer git -y 

echo "Instalando..." 

apt-get install  mysql-workbench -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - 

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"

#wget https://download-cf.jetbrains.com/idea/ideaIC-2018.2.5.tar.gz

#tar -vzxf ideaIC-2018.2.5.tar.gz -C /opt/ --one-top-level=idea

#mv /opt/idea/idea-*/** /opt/idea/

#chown $curuser:$curuser -R /opt/idea

apt-get install docker-ce

groupadd docker

usermod -aG docker $curuser

chown "$curuser":"$curuser" /home/"$curuser"/.docker -R
chmod g+rwx "/home/$curuser/.docker" -R

#echo $curuser

#docker run -i \
 #   -p 127.0.0.1:3306:3306 \
 #   -e MYSQL_ROOT_PASSWORD=root \
 #   -t cytopia/mysql-5.5

#docker run -i \
#    -p 127.0.0.1:3305:3306 \
#    -e MYSQL_ROOT_PASSWORD=root \
#    -t cytopia/mysql-5.5

apt-get install terminator -y

