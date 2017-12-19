#!/bin/sh
#
# PHPStorm
#
# This downloads & installs the PHPStorm IDE.

PHPSTORM_PATH=/usr/local/phpstorm

# Check for PHPStorm installation
if [ ! -d $PHPSTORM_PATH ]
then
  wget "https://download.jetbrains.com/webide/PhpStorm-2017.3.1.tar.gz" -O phpstorm.tar.gz
  sudo tar xf phpstorm.tar.gz
  sudo mkdir ${PHPSTORM_PATH}
  sudo mv PhpStorm-*/* ${PHPSTORM_PATH}
  sudo rm -rf PhpStorm-*/
  sudo rm phpstorm.tar.gz
fi

exit 0
