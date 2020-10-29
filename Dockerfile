FROM dcycle/drupal:8drush

RUN export COMPOSER_MEMORY_LIMIT=-1 && composer require \
  mglaman/drupal-check

RUN find . -name drupal-check

WORKDIR /var/www/html/modules

ENTRYPOINT [ "/var/www/html/vendor/bin/drupal-check" ]
