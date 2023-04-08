# Feed Filtering

The current version of the document can be found in (1).

(1): https://github.com/oursqlcommunity-org/planet/blob/master/feed_filtering.md

At the inception of Planet for the MySQL Community, no feed filtering was implemented.
At the time, it was thought that it would be possible to keep a signal-to-noise ratio
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
Only relying on tagged feed turned out to be non-satisfactory and it became clear that
implementing some sort of filtering was needed.

Implementing filtering was delayed as it was considered to be a non-trivial
change to
[index.html.erb](https://github.com/oursqlcommunity-org/planet/blob/master/template/index.html.erb)
and [atom.xml.erb](https://github.com/oursqlcommunity-org/planet/blob/master/template/atom.xml.erb).
If someone wants to take a shot at this, pull request would be considered,
but maybe create an issue first to avoid wasting time and effort.

Filtering was finally enabled.

It was first implemented by using an external service:
[rss.app](https://rss.app/).  Examples of filtered feeds with rss.app are
[Mydbaops](https://github.com/oursqlcommunity-org/planet/commit/79362749ad88b1f00fc9c3398d4ded0f36b2aac9)
and [Percona](https://github.com/oursqlcommunity-org/planet/commit/7b6e80760854e27c4d6746c495433713ea8c0a94).

Filtering with rss.app is considered a failed experiment.  Its filtering,
even though simple to use, leads to sub-optimal results.  It also costs too
much (around 50% of the monthly costs), and would have cost more when filtering
more than 15 feeds (because needing to upgrade from the [Basic to the Developper
subscription](https://rss.app/plans)).

The currently used filtering solution is [siftrss](https://siftrss.com/).
It is still considered an experiment, but so far is more successful than
rss.app.  Examples of filtered feeds with siftrss are
[RoseHosting Blog](https://github.com/oursqlcommunity-org/planet/commit/bfb7bc05fc4a5e23df7bf4f613d9ca7043f5f516),
[AWS Database Blog](https://github.com/oursqlcommunity-org/planet/commit/106c6e59cc7facc01e12e2f49e5337745810fcb1)
and [Etsy Code as Craft](https://github.com/oursqlcommunity-org/planet/commit/516d1369ad599be474fe428b546cb99a216536a1).
