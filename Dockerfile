FROM dcycle/drupal:8drush9

RUN curl -O -L https://github.com/mglaman/drupal-check/releases/latest/download/drupal-check.phar
RUN mv drupal-check.phar /usr/local/bin/drupal-check
RUN chmod +x /usr/local/bin/drupal-check

WORKDIR /var/www/html/modules

ENTRYPOINT [ "/usr/local/bin/drupal-check" ]
