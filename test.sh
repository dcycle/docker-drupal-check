set -e
docker pull dcycle/drupal:8drush9
docker pull dcycle/drupal-check:1
docker build -t local-dcycle-drupal-check-image .

docker run --rm -v $(pwd)/examples/passing_module:/var/www/html/modules/passing_module dcycle/drupal-check:1 passing_module
docker run --rm -v $(pwd)/examples/passing_module:/var/www/html/modules/passing_module local-dcycle-drupal-check-image passing_module
