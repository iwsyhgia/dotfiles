globalias() {
   zle _expand_alias
   zle expand-word
}
zle -N globalias
# space expands all aliases, including global
bindkey -M emacs "^ " globalias
bindkey -M viins "^ " globalias
bindkey '^O' accept-line-and-down-history

# extra files in ~/.zsh/configs/pre , ~/.zsh/configs , and ~/.zsh/configs/post
# these are loaded first, second, and third, respectively.
_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    if [ -d "$_dir/pre" ]; then
      for config in "$_dir"/pre/**/*(N-.); do
        . $config
      done
    fi

    for config in "$_dir"/**/*(N-.); do
      case "$config" in
        "$_dir"/pre/*)
          :
          ;;
        "$_dir"/post/*)
          :
          ;;
        *)
          if [ -f $config ]; then
            . $config
          fi
          ;;
      esac
    done

    if [ -d "$_dir/post" ]; then
      for config in "$_dir"/post/**/*(N-.); do
        . $config
      done
    fi
  fi
}
_load_settings "$HOME/.zsh/configs"

# TERM COLOR
DISABLE_AUTO_TITLE="true" # remove some symbols before result of command
TERM=screen-256color

# HISTORY
SAVEHIST=50000
HISTSIZE=5000
HISTFILE=~/.zsh_history
HISTCONTROL=ignoreboth
setopt appendhistory
setopt incappendhistory
setopt nosharehistory

# ZSH THEME
ZSH_THEME=robbyrussell
ZSH=$HOME/.oh-my-zsh
plugins=(alias-tips history-substring-search you-should-use rails git)

source $ZSH/oh-my-zsh.sh

# RIGHT PADDINT DISABLE
ZLE_RPROMPT_INDENT=0
SHELL=/bin/zsh

# aliases
fpath=(~/.zsh/Completion $fpath)
[[ -f ~/.aliases ]] && source ~/.aliases

bindkey '^[[1;5C' emacs-forward-word
bindkey '^[[1;5D' emacs-backward-word

# RBENV
export PATH="$PATH:$HOME/.rbenv/bin"
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export PATH=./bin:$PATH
export PATH=$PATH:/usr/local/go/bin
