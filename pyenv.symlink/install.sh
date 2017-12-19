#!/bin/sh
#
# Pyenv (a Python version manager)
#
# pyenv is first installed by HomeBrew.

pyenv update

# Versions to install by default
MAKE_OPTS="-j $(nproc)"
PY2_VERSIONS="2.7.13"
for version in $PY2_VERSIONS
do
  pyenv install $version
done

CONFIGURE_OPTS="--enable-optimizations"  # only py3 can be compiled with optimizations
PY3_VERSIONS="3.6.3"
for version in $PY3_VERSIONS
do
  pyenv install $version
done

pyenv global 3.6.3

# Install default pip packages
pip install -r requirements.txt

# Copy the pyenv completion file created by HomeBrew to this folder
completion_path="$(brew --prefix)/etc/bash_completion.d/pyenv.bash"
[ -s $completion_path ] && cp $completion_path ./completion.zsh

# Create pip completion file
pip completion --zsh > completion_pip.zsh
