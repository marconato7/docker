FROM ubuntu

LABEL maintainer="John Doe <john@doe.email>"

USER root

COPY ./web-server.bash /

RUN chmod 755 /web-server.bash

RUN apt -y update

RUN apt -y install bash netcat-traditional

USER nobody

ENTRYPOINT [ "/web-server.bash" ]
