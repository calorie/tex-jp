tex-jp
========

## Requirements

- [Docker](http://www.docker.com)
- [Packer](http://www.packer.io)
- [Ruby](https://www.ruby-lang.org), [Bundler](http://bundler.io)

## Setup

```
$ bundle install --path vendor/bundle --binstubs .bundle/bin
$ bundle exec berks vendor cookbooks
$ packer build tex.json
```
