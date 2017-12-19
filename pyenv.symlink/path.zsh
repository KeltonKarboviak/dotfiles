if (( $+commands[pyenv] ))
then
  # Add pyenv's bin folder to PATH
  export PATH="$PYENV_ROOT/bin:$PATH"
fi
