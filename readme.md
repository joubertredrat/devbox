<p align="center"><img alt="Devbox" src="./cube-11.png" /></p>
<h1 align="center">Devbox</h1>
<p align="center">Run dev environments easily and fastly using Podman or Docker</p>

## Purpose

This project provides a easy and fast way to run common services for development environments using Podman or Docker. for your project or tests, instead installing these locally in your machine. Using this, you can run anyone [services](#services-provided) listed below with web interfaces to manage them.

<p align="center"><a href="./terminal.gif?raw=true"><img alt="Terminal" src="./terminal.gif?raw=true" /></a></p>

## Dependencies

* [Make](https://www.gnu.org/software/make/)
* [Docker](https://www.docker.com/) or [Podman](https://podman.io/) with [Podman compose](https://github.com/containers/podman-compose)

## How to use?

Clone this repository or download and run `make help` to see all informations.

This project is using Docker by default, if you want to use Podman instead, you need to use `DEVBOX_ENGINE` variable before run the command. Example: `DEVBOX_ENGINE=podman make redis7.0-up`.

## Services provided

* Apache Kafka 2.7 on Confluent Platform [6.1.1](https://docs.confluent.io/platform/6.1.1/release-notes/index.html)
* Beanstalkd [1.12](https://beanstalkd.github.io/2020/06/04/1.12-release-notes.html)
* MariaDB [10.5](https://mariadb.com/kb/en/mariadb-server-10-5/), [10.6](https://mariadb.com/kb/en/mariadb-server-10-6/), [11.0](https://mariadb.com/kb/en/mariadb-server-11-0/)
* Memcached [1.6](https://memcached.org/)
* [MinIO](https://min.io/)
* MongoDB [4.4](https://docs.mongodb.com/manual/release-notes/4.4/), [5.0](https://docs.mongodb.com/manual/release-notes/5.0/), [6.0](https://docs.mongodb.com/manual/release-notes/6.0/), [7.0](https://docs.mongodb.com/manual/release-notes/7.0/)
* MySQL [5.7](https://dev.mysql.com/doc/relnotes/mysql/5.7/en/), [8.0](https://dev.mysql.com/doc/relnotes/mysql/8.0/en/)
* Postgres [13.2](https://www.postgresql.org/docs/13/release-13-2.html), [14.2](https://www.postgresql.org/docs/14/release-14-2.html), [15.3](https://www.postgresql.org/docs/15/release-15-3.html)
* RabbitMQ [3.10](https://blog.rabbitmq.com/tags/v3.10.x/)
* Redis [6.2](https://raw.githubusercontent.com/redis/redis/6.2/00-RELEASENOTES), [7.0](https://raw.githubusercontent.com/redis/redis/7.0/00-RELEASENOTES), [7.2](https://raw.githubusercontent.com/redis/redis/7.2/00-RELEASENOTES)

## License
[MIT](/license) license, logo by [Burhan Adiatma](https://www.vecteezy.com/members/gembuls).
