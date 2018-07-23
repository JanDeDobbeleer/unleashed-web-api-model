# Unleashed Web API Model

[![Build status][build-status-badge]][build-status]

This repository contains the model used by the [Unleashed Web API][uwa] and serves as a guide to expand or work on the existing functionality and endpoints.

## Installation and usage

### Requirements

- [docker][docker]
- [docker-compose][compose]
- [nodejs][node]

We use docker and docker-compose to display the swagger spec. This way anyone can use this repository without the need to install any external dependencies you might dislike (stop hating on nodejs). The UI is rendered using Dapperdox, which is currently the nicest tool available to properly display a swagger spec.

## Getting started

    docker-compose build

## Validating the changes

Either use `nodejs` locally if you have it:

    ./build.js

Or, use `docker-compose` in case you dislike it (seriously, stop hating on nodejs):

    docker-compose run --rm dapper sh -c "cd /model; ./build.js"

## Displaying the documentation

    docker-compose up

Open the spec at `localhost:3000`

## Conventions

### Deprecating calls

Since we have gone live with Stievie and part of the Mobile Viking's pages in production already use UWA. We cannot always remove certain calls if this is necessary.

Therefor use the word `DEPRECATED` in the description if a call becomes deprecated and make sure there is a clean up task for UWA, that removes the deprecated code once all web components have done the needed changes.

### Mark items not yet implemented

Functionality that is not yet available needs to be marked as `NOT YET IMPLEMENTED` in the description.
We've got a wishlist of items we'd like to have, but therefore they are not necessarily going to be available.
We're working on resolving these asap.

## Deployment pipeline

The code is built using [Travis CI][build-status] and then deployed to [Heroku][heroku] when master is green.
Because we can't use Docker on Heroku (at least not at the time of doing this), we upload the folder's content so that Heroku can start Dapperdox once ready.

[build-status-badge]: https://travis-ci.org/vikingco/unleashed-web-api-model.svg?branch=master
[build-status]: https://travis-ci.org/vikingco/unleashed-web-api-model
[uwa]: https://api.unleashed.be
[docker]: https://www.docker.com/
[compose]: https://docs.docker.com/compose/install/
[node]: https://nodejs.org/en/
[heroku]: https://heroku.com
