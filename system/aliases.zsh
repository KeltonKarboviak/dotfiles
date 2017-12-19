# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# Add an "alert" alias for long running commands. Use like so:
#    sleep 10; alert;
alias alert='notify-send --urgency=low -i "$([ $? = 0] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias pbcopy='xclip -sel clip'
alias sshconfig='e ~/.ssh/config'
alias zshconfig='e $ZSH/.zshrc'
alias ohmyzsh='e ~/.oh-my-zsh'
