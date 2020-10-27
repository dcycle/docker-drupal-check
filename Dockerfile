FROM dcycle/drupal:8drush

RUN curl -O -L https://github.com/mglaman/drupal-check/releases/latest/download/drupal-check.phar && \
  mv drupal-check.phar /usr/local/bin/drupal-check && \
  chmod +x /usr/local/bin/drupal-check

WORKDIR /var/www/html/modules

ENTRYPOINT [ "/usr/local/bin/drupal-check" ]
