<p align="center">
    <img src="https://avatars1.githubusercontent.com/u/30527746?s=200&v=4">
</p>

Nginx/Httpd Passenger NodeJs
========================
> Sandbox for development - container running Nginx or Httpd + Passenger + NodeJs

 [![Docker Pulls](https://img.shields.io/docker/pulls/dockernodejs/passenger.svg)](#)  [![Build Status](https://travis-ci.org/dockernodejs/passenger.svg?branch=master)](#) 

## Official docker repository

Docker Hub: https://hub.docker.com/r/dockernodejs/nginx-passenger/

## Supported tags
| Os                 | Node | Image                       | Layers |
|--------------------|------|-----------------------------|--------|
| Debian 8 (Jessie)  | 6.X  | dockernodejs/passenger:nginx-node-6  | [![](https://images.microbadger.com/badges/image/dockernodejs/passenger:nginx-node-6.svg)](https://microbadger.com/images/dockernodejs/passenger:nginx-node-6) |
| Debian 8 (Jessie)  | 6.X  | dockernodejs/passenger:apache-node-6  | [![](https://images.microbadger.com/badges/image/dockernodejs/passenger:apache-node-6.svg)](https://microbadger.com/images/dockernodejs/passenger:apache-node-6) |
| Debian 8 (Jessie)  | 8.X  | dockernodejs/passenger:nginx-node-8  | [![](https://images.microbadger.com/badges/image/dockernodejs/passenger:nginx-node-8.svg)](https://microbadger.com/images/dockernodejs/passenger:nginx-node-8) |
| Debian 8 (Jessie)  | 8.X  | dockernodejs/passenger:apache-node-8  | [![](https://images.microbadger.com/badges/image/dockernodejs/passenger:apache-node-8.svg)](https://microbadger.com/images/dockernodejs/passenger:apache-node-8) |
| Debian 8 (Jessie)  | 9.X  | dockernodejs/passenger:nginx-node-9  | [![](https://images.microbadger.com/badges/image/dockernodejs/passenger:nginx-node-9.svg)](https://microbadger.com/images/dockernodejs/passenger:nginx-node-9) |
| Debian 8 (Jessie)  | 9.X  | dockernodejs/passenger:apache-node-9  | [![](https://images.microbadger.com/badges/image/dockernodejs/passenger:apache-node-9.svg)](https://microbadger.com/images/dockernodejs/passenger:apache-node-9) |

> Based on [Official PHP images Debian](https://hub.docker.com/_/debian/) and all versions come with:

* Dependency Manager:
    * [Nginx]
    * [Httpd]
    * [NodeJS]
    * [Passenger]
    * [Git]

## Required

The sandbox uses [Docker][docker], a container tool for setting up a rapid development environment. The project has only two prerequisites:

- [Docker][docker] (1.12+)
- [Docker-composer][docker-compose] (1.10+)

## Usage

### Simple usage

Access to the container console easily:

    docker run --rm -ti -v /your/project:/app dockernodejs/passenger:nginx-node-8 bash

### Configuration of your Docker compose

#### Basic configuration

Create a file called docker-compose.yml in your project directory and paste the following:

```yaml
version: "2"

services:
    app:
        image: "dockernodejs/passenger:nginx-node-8"
        volumes:
            - .:/app
            - /app/public
        ports:
            - "8000:80"
```

```
$ docker-compose up
```

Enter [http://localhost:8080/](http://localhost:8080/) in a browser to see the application running.

---

## License

This project is released under the MIT License, you agree to license your code under the [MIT license](LICENSE)

[docker]: https://www.docker.com
[docker-compose]: https://docs.docker.com/compose/install/
[Git]: https://git-scm.com
[Httpd]: https://httpd.apache.org/docs/2.4/
[Nginx]: https://nginx.org
[NodeJS]: https://nodejs.org
[Passenger]: https://www.phusionpassenger.com/library/config/nginx/reference/
