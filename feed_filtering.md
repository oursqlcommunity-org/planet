# Feed Filtering

At the inception of Planet for the MySQL Community, no feed filtering was implemented.
At the time, it was thought that it would be possible to keep the signal-to-noise ratio
about MySQL and Variants content by using tagged feed.  This had limited success
([Percona](https://github.com/oursqlcommunity-org/planet/issues/6) and
[Isotopp](https://github.com/oursqlcommunity-org/planet/issues/48)),
lead to noise and missing posts
([Mydbaops](https://github.com/oursqlcommunity-org/planet/issues/70) and
[Percona](https://github.com/oursqlcommunity-org/planet/issues/68)),
and to the non-aggregation of some blogs 
([GitHub](https://github.com/oursqlcommunity-org/planet/issues/7),
[Phpflow](https://github.com/oursqlcommunity-org/planet/issues/9) and 
[Geeksww](https://github.com/oursqlcommunity-org/planet/issues/66)).
Only relying on tagged feed turned-out to be non-satisfactory, it became clear that
implementing some sort of filtering was needed.

Implementing filtering was delayed as it was considered to be a non-trivial
change to
[index.html.erb](https://github.com/oursqlcommunity-org/planet/blob/master/template/index.html.erb)
and [atom.xml.erb](https://github.com/oursqlcommunity-org/planet/blob/master/template/atom.xml.erb).
If someone wants to take a shot at this, pull request would be considered,
but maybe create an issue first to avoid wasted time and effort.

Filtering was finally enabled by using an external service:
[rss.app](https://rss.app/).  Some examples of filtered feeds are 
[Mydbaops](https://github.com/oursqlcommunity-org/planet/commit/79362749ad88b1f00fc9c3398d4ded0f36b2aac9)
and [Percona](https://github.com/oursqlcommunity-org/planet/commit/7b6e80760854e27c4d6746c495433713ea8c0a94),
there are others.

Filtring with rss.app is considered an experiment for now.  It currently
leads to good results, but its subscription-based model makes it something
that we might want to eventually replace, especially when we will need more
than 15 filtered feeds and will have to upgrade from the [Basic to the Developper
subscription](https://rss.app/plans).
