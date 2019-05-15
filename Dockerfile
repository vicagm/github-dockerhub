FROM ubuntu:14.04
LABEL maintainer="vic"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y mysql-server dnsutils

ADD my.cnf /etc/mysql/conf.d/my.cnf
ADD script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

CMD [ "/us/local/bin/script.sh" ]