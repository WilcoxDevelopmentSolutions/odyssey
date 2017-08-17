# README

## Application Setup

We've provided a Docker environment for development. It's suggested you use that

## Helper scripts

We have several helper scripts to help you run or access the Docker based development environment.


1. dev-scripts/start_env.sh : starts the Docker containers required
2. dev-scripts/ssh_env.sh : lets you SSH into your Docker development container
3. dev-scripts/start_app.sh : launches both Rails AND webpack, as having both running at same time is required by webpacker.
4. dev-scripts/vagrant_setup.sh : starts the docker daemon in the vagrant machine, runs with the vagrant provisioner. To run manually simply type `vagrant provision`

## Vagrant Setup

This is mostly for when Docker doesn't work on your platform or hardware of choice. Normally you should run Docker directly on the physical hardware you have.

* First `cd` into the projects root directory and run `vagrant up`. The first time you run this command may take a minute or two. 

* When it's finished building the machine, run `vagrant ssh`. 

### Running Docker in Vagrant
* docker mush be run as sudo
    * This means that the scripts must be run as sudo as well: `sudo dev-scripts/start_env.sh`
* To keep all the files on your local machine up to date with the files in  your vagrant machine open a new console in the projects root directory and run `vagrant rsync-auto`
* If docker isn't working, your docker daemon probably isn't running. Exit the vagrant machine: `logout`, and run `vagrant provision`. When that has finished run `vagrant ssh` and docker should be working fine.

## Installing Required Packages

    $ bundle install
    $ yarn install

# Philosophies

  1. We prefer webpacker over Asset Pipeline. Webpack based solutions fit better with JS land in 2017
  2. We prefer React as a front end framework, and MaterialUI as a framework over that
  3. Because we prefer Webpacker, javascript lives in app/javascript/packs/...


# Testing

Tests for both Ruby and Javascript/React components live in `test/`:

  * `test/spec` contain RSpec based Ruby tests
  * `test/mocha` contain Mocha based Javascript tests

Use `build-scripts/test.sh` to run the application's tests. (do not use `rake spec`)

