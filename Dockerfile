FROM ghcr.io/linuxserver/webtop:ubuntu-mate

RUN sudo su
RUN apt update
RUN apt upgrade -y
RUN apt install -y wget dpkg
RUN wget https://github.com/giowck/symphytum/releases/download/v2.6/symphytum-2.6-x86_64.deb
RUN chmod -R 0755 symphytum-2.6-x86_64.deb 
RUN dpkg -i symphytum-2.6-x86_64.deb || apt-get --fix-broken install -y
RUN apt -f install
RUN symphytum &

EXPOSE 3000
EXPOSE 3001
