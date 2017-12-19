# init according to man page
if (( $+commands[pyenv] ))
  eval "$(pyenv virtualenv-init -)"
fi
