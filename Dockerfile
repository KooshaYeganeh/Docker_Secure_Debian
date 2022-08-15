FROM debian

LABEL maintainer="koosha yeganeh"

RUN apt update \
&& apt upgrade -y


RUN apt update \
&& apt install gcc -y \
&& echo "\e[1;32m gcc Installed on system [ OK ]" \
&& apt install vim -y \
&& echo "\e[1;32m Vim Installed on system [ OK ]" \
&& apt install wget -y \
&& echo "\e[1;32m wget Installed on system [ OK ]" \
&& apt install curl -y \
&& echo "\e[1;32m curl Installed on system [ OK ]" \
&& apt install git -y \
&& echo "\e[1;32m git Installed on system [ OK ]" \
&& apt install zip -y \
&& echo "\e[1;32m zip Installed on system [ OK ]" \
&& apt install net-tools -y \
&& echo "\e[1;32m net-tools Installed on system [ OK ]" 

RUN apt update \
&& apt install python3 -y \
&& echo "\e[1;32m python3 Installed on system [ OK ]" \
&& apt install python3-pip -y \
&& echo "\e[1;32m pip3 Installed on system [ OK ]" \
&& pip3 install virtualenv \
&& echo "\e[1;32m python virtualenv Installed on system [ OK ]" 


RUN apt update \
&& cd /opt \
&& wget http://www.rfxn.com/downloads/maldetect-current.tar.gz \
&& echo "File of malware Detetct Downloaded" \
&& tar xfz maldetect-current.tar.gz \
&& cd maldetect-1.6.4 \ 
&& echo "\e[1;32m Start to Install malwareDetect" \
&& ./install.sh \
&& echo "\e[1;32m MalwareDetect Installed Successfully [ OK ]" \
&& cd 


RUN apt update \
&& apt install clamav clamav-daemon -y \
&& echo "\e[1;32m clamAV Installed on system [ OK ]" \
&& freshclam \
&& echo "\e[1;32m clamAV Database Updated"

# change EMAIL_FROM and EMAIL_TO 
RUN apt install rkhunter -y \
&& echo "\e[1;32m RKhunter Installed on system [ OK ]" \
&& apt install lynis -y \
&& echo "\e[1;32m Lynis Installed on system [ OK ]" \
&& apt install sshfs -y \
&& echo "\e[1;32m SSHFS Installed on system [ OK ]" \
&& apt install nginx -y \
&& echo "\e[1;32m tcpdump Installed on system [ OK ]" \
&& apt install fail2ban -y \
&& echo "\e[1;32m Fail2ban Installed on system [ OK ]" \
&& apt install iptables -y \
&& echo "\e[1;32m iptables Installed on system [ OK ]" \
&& mkdir /etc/iptables \
&& touch /etc/iptables/rules.v4 



RUN chmod 700 /usr/bin/who \
&& chmod 700 /sbin/ifconfig \
&& chmod 700 /usr/bin/perl 


