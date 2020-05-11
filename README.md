[![CircleCI](https://circleci.com/gh/dcycle/docker-drupal-check.svg?style=svg)](https://circleci.com/gh/dcycle/docker-drupal-check)

**~Note, as of May 11, 2020, please use tag 1.2019-12-30-21-59-43-UTC until [this issue](https://github.com/mglaman/drupal-check/issues/167) is resolved.~**
**~Note, as of Feb. 4, 2020, please use tag 1.2019-12-30-21-59-43-UTC until [this issue](https://github.com/mglaman/drupal-check/issues/131) is resolved.~**

Check Drupal code with [Drupal Check](https://github.com/mglaman/drupal-check).

For example:

    docker run --rm \
      -v $(pwd)/examples/passing_module:/var/www/html/modules/passing_module \
      dcycle/drupal-check:1.2019-12-30-21-59-43-UTC passing_module
    docker run --rm \
      -v $(pwd)/examples/failing_module:/var/www/html/modules/failing_module \
      dcycle/drupal-check:1.2019-12-30-21-59-43-UTC failing_module

See [this project on the Docker Hub](https://hub.docker.com/r/dcycle/drupal-check/).
