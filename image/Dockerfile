FROM debian:jessie

LABEL maintainer="Florent DESPIERRES <florent@despierres.pro> Michael COULLERET <michael@coulleret.pro>"

ARG NODE_VERSION
ENV NODE_VERSION=$NODE_VERSION

# Run install
COPY ./image/bin/apt.sh /tmp/
RUN chmod +x /tmp/apt.sh
RUN sh /tmp/apt.sh

# Copy config files
COPY ./image/etc/nginx /etc/nginx/

WORKDIR /app

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
