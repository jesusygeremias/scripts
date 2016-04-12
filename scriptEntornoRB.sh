#!/bin/bash


##################################################################
##								##
##	Script instalación entorno Ruby On Rails		##
##	Descarga automaticamente la version 8.0.3 de rubymine	##
##	Cambiar enlace del wget para descargar otra version	##
##								##
##################################################################



#Install dependencies
sudo apt-get install -y git-core subversion -y

#Add Key
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 -y

#Install RVM
\curl -sSL https://get.rvm.io | bash -s 2.0.0 --rails --ruby -y
#rvm install ruby-2.0.0 -y
rvm use ruby-2.0.0

#Download RubyMine
wget https://download.jetbrains.com/ruby/RubyMine-8.0.3.tar.gz

#Untar RubyMine
tar -xzvf RubyMine*.tar.gz 

#Install JDK
sudo apt-get install openjdk-7-jdk -y

#RubymineProjects
sudo mkdir /root/RubymineProjects

#Install MySql
sudo apt-get install mysql-server mysql-client 1234 1234
#sudo service mysql status
#sudo service mysql stop
#sudo service mysql start

#Run RubyMine
sudo ./RubyMine*/bin/rubymine.sh -y


#Gemas:
#sudo apt-get install bundler -y
#sudo apt-get install rake -y
#bundle install


