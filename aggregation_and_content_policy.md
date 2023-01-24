# Aggregation and Content Policy

If there is a problem with content on Planet for the MySQL Community, please
try solving it directly with the author (there should be a link to their Twitter
profile in the subscription list, or there is probably a way to comment on
the problematic post).  If it fails, or if it is a kind of problem that cannot
be solved with a discussion, open an
[Issue](https://github.com/oursqlcommunity-org/planet/issues),
send an email to planet AT oursqlcommunity DOT org, or contact the
[maintainer](https://twitter.com/jfg956) on Twitter.

This document aims at bringing clarity to what should be included on Planet for
the MySQL Community and how changes to the aggregated feeds are made.  The
current version of the document can be found in (1).

(1): https://github.com/oursqlcommunity-org/planet/blob/master/aggregation_and_content_policy.md

The configuration file containing currently aggregated feeds is
[planet.ini](https://github.com/oursqlcommunity-org/planet/blob/master/planet.ini).


## Author Availability Policy

Authors whose blogs are aggregated on Planet for the MySQL Community should be
available for public discussions about the content they provide.  For that,
they should provide a Twitter handle (or another way by which they can be
contacted).

In case of a matter that should be managed privately, authors are also asked to
provide an email address (or another way to be privately contacted by the
maintainers of Planet for the MySQL Community).  If they choose not to do this,
communication which would have been private will be public, which is less than
ideal.  Email addresses are not shared publicly.  A confidential way to
communicate an email address in an issue or a pull request is described in the
[Email Encryption How-to](https://github.com/oursqlcommunity-org/planet/blob/master/email_encryption_howto.md).
Another way is to send an email at planet AT oursqlcommunity DOT org.


## Relevant Feeds

The aggregator should contain articles that are relevant to the MySQL
Community/Ecosystem which is is not limited the users of the MySQL Database.
In the current context, it also includes people interested in MySQL Variants
including MariaDB Server, Percona Server, Amazon RDS and Aurora, Google Cloud
SQL for MySQL, and Azure and Alibaba flavor(s) of MySQL/MariaDB/Percona Servers.

- If your blog contains a mix of MySQL and non-MySQL content, please submit a
category or tag feed instead of a default feed.

- If it is not possible to submit a category or tag feed,
[filtering your feed](https://github.com/oursqlcommunity-org/planet/blob/master/feed_filtering.md)
on the aggregator side might be possible.

- If the recent entries of a submitted feed contains a small amount of relevant
content, it might be considered for
[filtering](https://github.com/oursqlcommunity-org/planet/blob/master/feed_filtering.md).
Authors will usually be contacted before filtering is implemented on their feed.


## Content Management

We aim at not doing any censorship on the content aggregated on Planet for the
MySQL Community.  As long as your content is relevant to the community/ecosystem
(and we are voluntarily wide in the definition of relevant), it is welcome on
the aggregator.  This does not mean that harmful content will be tolerated.
What is considered harmful content is obviously subjective, and we will do our
best to deal with this in an open and fair way.


## Adding/Removing a Feed

If you want to add your feed, open an
[Issue](https://github.com/oursqlcommunity-org/planet/issues)
providing:

* the name for your blog,
* a link to your blog,
* a link to the corresponding Atom or RSS feed,
* your Twitter handle (or another way for publicly contacting you),
* your email address (encrypted format recommended; or another way for privately contacting you),
* any other information you think is relevant.

Alternatively, for quicker processing, you can create a
[Pull Request](https://github.com/oursqlcommunity-org/planet/pulls)
containing the relevant changes to the
[planet.ini](https://github.com/oursqlcommunity-org/planet/blob/master/planet.ini)
file.

If you have a good reason for not creating an issue, you can send an email at
planet AT oursqlcommunity DOT org.  In your email, please explain why you did
not create an issue.  Do not send an email for anonymity reasons, as your name
will be mentioned in a corresponding issue or pull request (normally, addition
and removal of feeds are done openly, but there might be exceptions for abuses
or other unusual situations).

If you want to remove a feed, open an issue, create a pull request, or send an
email.

(Policy inspired by the one of the
[OpenStreetMap feed aggregator](https://github.com/gravitystorm/blogs.osm.org/blob/700ff57d4b6fb8b821f5baee2799f4eeaacb95cc/FEEDS.md).)
