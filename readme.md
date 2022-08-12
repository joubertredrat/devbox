<p align="center">
  <img alt="Devbox" src="https://raw.githubusercontent.com/joubertredrat/devbox/master/cube-11.png" />
</p>
<h1 align="center">Devbox</h1>

Run dev environments easily and fastly using docker

## Purpose

This project provides a easy and fast way to run development environments using docker, instead installing these locally in your machine. Using this, you can run anyone [services](#services-supported) listed below with web interfaces to manage them.

## How to use?

Clone this repository or download and run `make help` to see all informations.

## Dependencies

* [make](https://www.gnu.org/software/make/)
* [docker](https://www.docker.com/)

## Services provided

* Apache Kafka 2.7 on Confluent Platform [6.1.1](https://docs.confluent.io/platform/6.1.1/release-notes/index.html)
* Beanstalkd [1.12](https://beanstalkd.github.io/2020/06/04/1.12-release-notes.html)
* MariaDB [10.5](https://mariadb.com/kb/en/mariadb-server-105/), [10.6](https://mariadb.com/kb/en/mariadb-server-106/)
* Memcached [1.6](https://memcached.org/)
* [MinIO](https://min.io/)
* MongoDB [4.4](https://docs.mongodb.com/manual/release-notes/4.4/), [5.0](https://docs.mongodb.com/manual/release-notes/5.0/)
* MySQL [5.7](https://dev.mysql.com/doc/relnotes/mysql/5.7/en/), [8.0](https://dev.mysql.com/doc/relnotes/mysql/8.0/en/)
* Postgres [13.2](https://www.postgresql.org/docs/13/release-13-2.html), [14.2](https://www.postgresql.org/docs/14/release-14-2.html)
* RabbitMQ [3.10](https://blog.rabbitmq.com/tags/v3.10.x/)
* Redis [6.2](https://redis.io), [7.0](https://redis.io)

## License
[MIT](/license) license, logo by [Burhan Adiatma](https://www.vecteezy.com/members/gembuls).
