#!/bin/sh

expected_signature="$(curl -s https://composer.github.io/installer.sig)"
php -r "copy('https://getcomposer.org/installer', 'composer.php');"
actual_signature="$(php -r "echo hash_file('SHA384', 'composer.php');")"

if [ "$expected_signature" != "$actual_signature" ]; then
  >&2 echo 'ERROR: invalid installer signature'
  rm composer.php
  exit 1
fi

php composer.php --quiet
result=$?
rm composer.php
exit $result
