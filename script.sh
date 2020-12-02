#!/bin/bash

# Instal streama
sudo yum install vim                                                                                                                                                                            
sudo yum -y update                                                                                                                                                                                  
sudo wget --no-cookies --no-check-certificate --header "Cookie:oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm"   

sudo yum -y localinstall jdk-8u131-linux-x64.rpm
                                                                                                                                                       
java -version       

sudo wget https://github.com/dularion/streama/releases/download/v1.1/streama-1.1.war                                                                                                                                  sudo mkdir /opt/streama 

sudo mv streama-1.1.war /opt/streama/streama.war

sudo java -jar /opt/streama/streama.war   

sudo mkdir /opt/streama/media 

sudo chmod 777 /opt/streama/media  

sudo vim /etc/systemd/system/streama.service  

sudo systemctl start streama   

                                                                            

sudo systemctl enable streama   

#Instal http
sudo yum -y install httpd 

sudo systemctl start httpd 

suydo systemctl enable httpd 

vim /etc/httpd/conf.d/streama.collazos.com.conf 

yum install pip   

sudo yum install python3-pip 

sudo yum install epel-release 

sudo yum install youtube-dl    
    
# Iniciar Servicios 
sudo systemctl start streama
sudo systemctl enable streama   
sudo systemctl start httpd 
sudo systemctl enable httpd 




