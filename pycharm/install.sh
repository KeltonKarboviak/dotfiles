#!/bin/sh
#
# PyCharm
#
# This downloads & installs the PyCharm IDE.

PYCHARM_PATH=/usr/local/pycharm

if [ ! -d $PYCHARM_PATH ]
then
  wget "https://download.jetbrains.com/python/pycharm-community-2017.3.1.tar.gz" -O pycharm.tar.gz
  sudo tar xf pycharm.tar.gz
  sudo mkdir ${PYCHARM_PATH}
  sudo mv pycharm-*/* ${PYCHARM_PATH}
  sudo rm -rf pycharm-*/
  sudo rm pycharm.tar.gz
fi

exit 0
