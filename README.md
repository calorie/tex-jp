tex-jp
========

Tex-JP compile Japanese tex files on save.

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

## Usage

```
$ bundle exec guard
Switch to another tab/window.
$ vi tex/foo.tex
```

## Optional

### [Vagrant](http://www.vagrantup.com)

```
$ curl -o insecure_key -fSL https://github.com/phusion/baseimage-docker/raw/master/image/insecure_key
$ chmod 600 insecure_key
$ vagrant up --provider=docker
```
