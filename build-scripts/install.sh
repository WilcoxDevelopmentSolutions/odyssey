#!/bin/bash

set -e

gem install bundler
bundle install

yarn install

rake db:setup

build-scripts/migrate.sh
RAILS_ENV=test build-scripts/migrate.sh
