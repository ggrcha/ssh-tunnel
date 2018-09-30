FROM ubuntu:18.04

ADD start-ssh.sh /usr/local/bin/start-ssh.sh

RUN chmod 777 /usr/local/bin/start-ssh.sh

RUN apt-get update && apt-get install -y ssh

EXPOSE 23771

CMD ["/usr/local/bin/start-ssh.sh"]
