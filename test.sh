set -e
docker build -t local-dcycle-drupal-check-image .

docker run --rm -v $(pwd)/examples/passing_module:/var/www/html/modules/passing_module local-dcycle-drupal-check-image passing_module
