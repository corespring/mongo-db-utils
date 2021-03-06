# MongoDbUtils

[![Build Status](https://travis-ci.org/edeustace/mongo-db-utils.png)](https://travis-ci.org/edeustace/mongo-db-utils)


### !Current version 0.1.2 is in Beta - for a safer version use 0.0.9

A little gem that simplifies backing up and copying your mongo dbs.

You can run as a script (eg for cron jobs, or in interactive mode):

![Sample](https://github.com/edeustace/mongo-db-utils/raw/master/images/grab.png)

It saves your database urls so any task is just a few clicks.

* backup a database locally
* backup a database and deploy it to Amazon S3
* copy a database from one server to another (whilst backing up locally the target db if it exists)

## Installation

You need to have *mongodump* and *mongorestore* on your path.

    gem install 'mongo-db-utils'

And then execute:

    $ mongo-db-utils console


## Limitatons

ruby >= 1.9.3

## Usage
Once you launch the console it'll provide you with a set of options - pretty self explanatory.
When it does backups it stores them in ````~/.mongo-db-utils/backups/````. The naming convention is ````${server}_${port}/${database_name}/${timestamp}/db````

## Testing

    bundle exec rspec spec

    #cucumber can't handle interactive CLIs so need to wait on this.
    #bundle exec cucumber features

## Building source

    #run console
    bundle exec bin/mongo-db-utils console path_to/config.yml (optional - it defaults to ~/.mongo-db-utils/config.yml)

    #install the gem locally
    rake build
    gem install pkg/mongo-db-utils.gem



## Release Notes

see [Releases](http://github.com/edeustace/mongo-db-utils/releases).
