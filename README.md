[![CircleCI](https://circleci.com/gh/dcycle/docker-drupal-check.svg?style=svg)](https://circleci.com/gh/dcycle/docker-drupal-check)

Notes
-----

Check Drupal code with [Drupal Check](https://github.com/mglaman/drupal-check).

For example:

    docker run --rm \
      -v $(pwd)/examples/passing_module:/var/www/html/modules/passing_module \
      dcycle/drupal-check:1 passing_module
    docker run --rm \
      -v $(pwd)/examples/failing_module:/var/www/html/modules/failing_module \
      dcycle/drupal-check:1 failing_module

See [this project on the Docker Hub](https://hub.docker.com/r/dcycle/drupal-check/).
