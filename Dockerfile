FROM ubuntu

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y openssh-server

RUN echo 'root:p@s5w0rd' | chpasswd

COPY sshd_config /etc/ssh/sshd_config

RUN mkdir /var/run/sshd
COPY start_ssh.sh /opt/startup/start_ssh.sh
RUN chmod +x /opt/startup/start_ssh.sh

EXPOSE 22

USER root

CMD ["/opt/startup/start_ssh.sh"]