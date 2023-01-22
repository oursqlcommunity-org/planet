# Blogs Aggregator (Planet) for the MySQL Community

This repository contains the configuration required to generate the contents of
[Planet for the MySQL Community](https://planet.oursqlcommunity.org/).

The current version of this file can be found in (1).

(1): https://github.com/oursqlcommunity-org/planet/blob/master/README.md

## Software

The system is built using the
[Planet Pluto](https://github.com/feedreader)
Feed Reader and (Static) Website Generator.

## Dependencies

### Planet Pluto Software

As this system is built using the Planet Pluto Software, it needs to be
installed first.

### A Web Server

Planet Pluto only generates static web pages.  For serving these you need a web
server.  Explaining how to install and configure a web server is out of scope
of this README, you will need to Google it.

The Nginx configuration currently used can be found in (2).

(2): https://github.com/oursqlcommunity-org/planet/blob/master/etc/nginx/sites-available/planet-beta-pluto


## A Planet Pluto Template

Planet Pluto needs a template for generating static web pages.  The template
of Planet for the MySQL Community can be found in the template directory of
this repository.

This template was bootstrapped with the
[OpenStreetMap Blogs](https://github.com/gravitystorm/blogs.osm.org/tree/700ff57d4b6fb8b821f5baee2799f4eeaacb95cc)
(*OSMB*) template, which was started by taking the
[planet-blank template](https://github.com/planet-templates/planet-blank)
and enriched with the
[planet-feeds template](https://github.com/planet-templates/planet-feeds).

The OSMB template was then modified to fit the
[Planet for MySQL Community Requirements](https://jfg-mysql.blogspot.com/2020/05/planet-mysql-community-requirements-rfc.html).

## Static Files Generation How-to

0. Install Planet Pluto, below commands are doing that for Debian 10.

```
sudo apt-get -y install ruby-full build-essential libsqlite3-dev
sudo gem install pluto
```

1. Clone this repository.

```
git clone https://github.com/oursqlcommunity-org/planet.git
```

2. In the directory of the clonned repository, run below command to build the
`planet_mysql_community` template with output in the `html` directory.

```
pluto build planet.ini -t planet_mysql_community -o ./html
```

* To generate the static files without fetching the feeds, run this command:

```
pluto merge -t planet_mysql_community -o ./html
```

* To fetch the feeds feeds and update planet.db without generating static
files, run this command:

```
pluto update
```

## Feed Policy

The policy of what feeds are suitable for inclusion, along with guidance on
how to propose changes to the feeds list, is available in the file
[aggregation_and_content_policy.md](aggregation_and_content_policy.md).

