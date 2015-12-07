# Docker Islandora Development Stack [![Build Status](https://travis-ci.org/unb-libraries/docker-islandora-dev.svg)](https://travis-ci.org/unb-libraries/docker-islandora-dev)
A simple, extensible Islandora docker stack. Leverages the [phusion/baseimage](https://registry.hub.docker.com/u/phusion/baseimage/) my_init system. *This is not a production-ready stack*.

The stack is pseudo-monolithic, is based on docker-compose with fedora/solr/gsearch located on the same instance.

## Requirements

* `docker`
* `docker-compose`

## Getting Started
Not sure where to start? New to Docker? Check out the [unblibraries/docker-islandora-dev Wiki](https://github.com/unb-libraries/docker-islandora-dev/wiki) for detailed instructions on deploying a local development instance.

## License
- Islandora docker dev stack is licensed under the MIT License:
  - [http://opensource.org/licenses/mit-license.html](http://opensource.org/licenses/mit-license.html)
- Attribution is not required, but much appreciated:
  - `Islandora docker dev stack by UNB Libraries`
