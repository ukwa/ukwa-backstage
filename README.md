UKWA Backstage
==============

This service aims to provide an overview of the status of various internal systems.  In the spirit of attempting to re-use components we already know, rather than adding more components our building our own, it uses [Apache Solr](http://lucene.apache.org/solr/) as the backend and [Blacklight](http://projectblacklight.org/) as the frontend. Different Solr collections are used for different content and for managing different workflows, and this repository contains the simple UI that allows them all to be inspected.

- The Tracking Database (`trackdb`) is used to keep track of the files we have on HDFS and the status of the various operations we perform on them, like:
    - which WARC files have been indexed into OutbackCDX (for playback),
    - which WARC files have been indexed into Solr (for search),
    - which log files have been processed to extract documents (for the document harvester),
    - which logs and/or files have been processed to generate statistics or summaries (e.g. which domains are in WARCs).
- The Web Archive Discovery (`warc`) index provides an alternative interface to our [main full-text search service](https://www.webarchive.org.uk/), configured for internal use rather than general access. 
- Documents TBC? (preferable to use this than the current mess of on-disk files)
- Launches/crawls/API-crawl-requests TBC?
