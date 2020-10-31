FROM dcycle/drupal:8drush

RUN export COMPOSER_MEMORY_LIMIT=-1 && composer require \
  mglaman/drupal-check

RUN echo 'memory_limit=256M' >> /usr/local/etc/php/php.ini

WORKDIR /var/www/html/modules

ENTRYPOINT [ "/var/www/html/vendor/bin/drupal-check" ]
