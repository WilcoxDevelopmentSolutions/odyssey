# README

## Application Setup

We've provided a Docker environment for development. It's suggested you use that

## Helper scripts

We have several helper scripts to help you run or access the Docker based development environment.


1. dev-scripts/start_env.sh : starts the Docker containers required
2. dev-scripts/ssh_env.sh : lets you SSH into your Docker development container
3. dev-scripts/start_app.sh : launches both Rails AND webpack, as having both running at same time is required by webpacker.
    

# Philosophies

  1. We prefer webpacker over Asset Pipeline. Webpack based solutions fit better with JS land in 2017
  2. We prefer React as a front end framework, and MaterialUI as a framework over that
  3. Because we prefer Webpacker, javascript lives in app/javascript/packs/...


# Testing

Tests for both Ruby and Javascript/React components live in `test/`:

  * `test/spec` contain RSpec based Ruby tests
  * `test/mocha` contain Mocha based Javascript tests

Use `build-scripts/test.sh` to run the application's tests. (do not use `rake spec`)


