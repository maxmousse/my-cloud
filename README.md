# My cloud

This repository contains a simple but fully usable
setup for a self-hosted nextcloud instance. Feel
free to fork it and adapt it to your own needs!

## Description

The setup rely on docker and docker-compose. As docker
is plateform agnostic, the docker compose file should
be usable on any plateform, but please keep in mind 
that it is only tested on Ubuntu server so I can not
guaranty that it will work on other plateforms (especially
the bash scripts for setup).

The infrastructure is composed of the next parts:

- A Nextcloud fpm container (A server is not included in 
this image). You can find the documentation here:
https://github.com/docker-library/docs/blob/master/nextcloud/README.md .

-  A postgres database that hosts the Nextcloud data. For more
information, check postgres documentation:
https://hub.docker.com/_/postgres .

- A redis container is in charge of in-memory cache 
(used by nextcloud to keep track of locked files). Once 
again, refer to Nextcloud or redis documentation 
(https://hub.docker.com/_/redis) for more information. 

- The Nextcloud application is served by a Nginx
server. Note that this server only serves nextcloud
pages and is not in charged of SSL encryption. You
can find usefull Nginx configuration example in the
Nextcloud docker configuration examples
(https://github.com/nextcloud/docker/tree/master/.examples).

- The https encryption and the SSL certificate generation 
is handled by a Traefik reverse proxy. It is the entrypoint 
of the whole infarstructure. Refer to Traefik documentation
for more details: https://doc.traefik.io/traefik/

- I host my Nextcloud instance at home, behind my internet provider
router. As many internet providers do not offer static IP 
(mine does not) I use a registrar that supports dynamic DNS 
service. The ddns service you can see in `app/docker-compose.dyndns.yml`
is in charge of polling google DNS to keep my DNS up to date with my
dynamic IP.  This service will probably not be needed by everyone,
that is why it is in a separate docker-compose file.

## Requirements

Here are the requirements to run this Nextcloud instance at home:

- A computer with `Ubuntu server 20.04`.You can run it on a 
Raspberry Pi 3 but it will be pretty slow. Adapt your hardware
to your needs (I use a ODROID H2+ board).

- A domain name whith DNS access.

- A SMPT provider if you want your Nextcloud instance to be able
to send emails (for password reset, admin notification...)

## Installation

### Server setup

Install `docker` and `docker-compose` on your server. Then clone
this repository and you should be ready to go.

### Docker configuration

The repository comes with an example configuration file that
must be renamed and updated with your own configuration.
`app/.env.examlpe` should be renamed `app/.env`.
You will find more documentation directly in the  config file.

### Local network configuration

If you want your Nextcloud instance to be accessible on the 
web, you have to configure your router to forward incoming trafic
of ports `80` and `443` to the same ports of your server. You should
also associate a static IP to the server.

### DNS configuration

The DNS configuration requires nothing fancy, just point your domain
to your router public IP. If this IP is not static, use a dynamic DNS.
You must also add relevant DNS rules for your SMTP configuration.

### Backups
