######################################
######################################
#                                    #
#            ZSH Config				 #
#                                    #
######################################
######################################
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/justisgipson/.oh-my-zsh"

ZSH_THEME=""

export UPDATE_ZSH_DAYS=7
ENABLE_CORRECTION="true"

# plugins
plugins=(
    autojump
    battery
    colored-man-pages
    docker-compose
    fzf-brew
    git
    golang
    macos
    rust
    systemadmin
    terraform
    web-search
    z
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Sources!
source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source "$(brew --prefix)/etc/profile.d/z.sh"

# GLOBDOTS lets files beginning with a . be matched without explicitly specifying the dot
setopt globdots

# Path for most things getting sourced
export PATH="/usr/local/bin:$PATH"
# poetry/python
export PATH="$HOME/.poetry/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"

# ruby path
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-remotebranch git-tagname)
RPROMPT='$(tf_prompt_info)'

# History
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000000
export SAVEHIST=10000000
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.

# Aliases
# history w/ timestamps
alias hist="history -i"
# can still pass additional `exa` flags if needed/wanted
alias ls="eza --all --long --header --created --color=always --icons"
alias mkdir="mkdir -p"
# apple dotfiles
alias showall="defaults write com.apple.finder AppleShowAllFiles YES"
alias shownone="defaults write com.apple.finder AppleShowAllFiles NO"
# updating
alias brewup="brew update && brew upgrade && brew upgrade --cask && brew cleanup; brew doctor"
alias npmup="npm update -g"
# Bat
alias cat="bat"
export BAT_THEME="ansi"
export BAT_PAGER="less -RF"
# rustcan port scanner
alias rustscan="docker run -it --rm --name rustscan rustscan/rustscan:1.10.0"
# editors
alias vim="nvim"
export EDITOR="nvim"
export VISUAL="$EDITOR"
# docker
alias up="docker-compose up"
alias down="docker-compose down"
# gcloud
export CLOUDSDK_PYTHON=/usr/bin/python3
# grep > ripgrep alias
export grep="rg"
# powerlevel10k update
alias p10k_update="git -C \${ZSH_CUSTOM:-\$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull"
# python alias
alias python="python3"
alias py="python3"
# screen saver
alias ss="~/.config/clrBuffer.sh && open -b com.apple.ScreenSaver.Engine"
# sleep shortcut
alias zzz="~/.config/clrBuffer.sh && pmset sleepnow"

# this makes `theFuck` work
eval "$(thefuck --alias fix)"

autoload -U +X bashcompinit && bashcompinit

# NVM path
export NVM_DIR="$HOME/.nvm"

## FUNCTIONS I MIGHT USE ##

# ddig
# return dns record(s) from URL
# usage: ddig https://www.google.com
function ddig() {
    echo $1 | awk -F/ "{print $3}" | xargs dig
}

# nvm sourced
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# fzf bindings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# if type brew &>/dev/null; then
#     FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

#     autoload -Uz compinit
#     compinit
# fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
  test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
fi

complete -o nospace -C /opt/homebrew/bin/terraform terraform

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export FPATH="/opt/homebrew/bin/eza/completions/zsh:$FPATH"
source "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
