#Pi-pirates.com nodejs
FROM pipirates/raspbian

ARG NODEVERSION

RUN apt-get update
RUN apt-get -y install sudo curl 

RUN curl -sL https://deb.nodesource.com/setup_$NODEVERSION.x | sudo -E bash - && apt-get -y install nodejs build-essential
RUN ln -s /usr/local/bin/node /usr/local/bin/nodejs

CMD  [ "node" ]

