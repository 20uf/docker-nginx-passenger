FROM debian:jessie

LABEL maintainer="Florent DESPIERRES <florent@despierres.pro>, Michael COULLERET <michael@coulleret.pro>"

ARG NODE_VERSION
ENV NODE_VERSION=$NODE_VERSION

# Run install
COPY ./image/apache/bin/apt.sh /tmp/
RUN chmod +x /tmp/apt.sh
RUN sh /tmp/apt.sh

# Copy config files
COPY ./image/apache/config/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY ./image/apache/config/passenger.conf /etc/apache2/mods-available/passenger.conf

WORKDIR /app

EXPOSE 80 443
CMD ["httpd", "-DFOREGROUND"]
