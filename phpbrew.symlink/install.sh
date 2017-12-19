#!/bin/sh
#
# phpbrew
#
# This installs PHPBrew (a PHP version manager) and its dependencies.

# Check for PHPBrew installation
if test ! $(which phpbrew)
then
  sudo apt install -y \
    php7.0 \
    php7.0-curl \
    php7.0-json \
    php7.0-cgi \
    php7.0-fpm \
    autoconf \
    automake \
    libxml2-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    openssl \
    gettext \
    libicu-dev \
    libmcrypt-dev \
    libmcrypt4 \
    libbz2-dev \
    libreadline-dev \
    build-essential \
    libmhash-dev \
    libmhash2 \
    libxslt1-dev

  curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
  chmod +x phpbrew
  sudo mv phpbrew /usr/local/bin/phpbrew

  if test $(which phpbrew)
  then
    phpbrew init

  . ~/.phpbrew/bashrc

    phpbrew known --update
    phpbrew update

    # Versions to install by default
    VERSIONS="5.4.42 7.0.18"
    for version in $VERSIONS
    do
      phpbrew install -j $(nproc) $version +default +pdo +mysql +sqlite
    done

    exit 0
  fi
fi

exit 1
