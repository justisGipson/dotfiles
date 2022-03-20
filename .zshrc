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

export ZSH="/Users/jgipson/.oh-my-zsh"

# ZSH_THEME="robbyrussell"

export UPDATE_ZSH_DAYS=7
ENABLE_CORRECTION="true"

# plugins
plugins=(
    battery
    colored-man-pages
    docker-compose
    gcloud
    git
    golang
    macos
    rust
    systemadmin
    thefuck
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Sources
source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Path for most things getting sources
export PATH="/usr/local/bin:$PATH"

# ruby shit
export PATH="/usr/local/opt/ruby/bin:$PATH"

POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-remotebranch git-tagname)

# Aliases
alias ls='exa -alhU --color=always --icons'
alias lg='lazygit'
alias mkdir='mkdir -p'
# zsh config
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
# howdoi - display 5 colored results
alias h='function hdi(){ howdoi $* -c -n 5; }; hdi'
# apple dotfiles
alias showall='defaults write com.apple.finder AppleShowAllFiles YES'
alias shownone='defaults write com.apple.finder AppleShowAllFiles NO'
# updating
alias brewup='brew update && brew upgrade && brew upgrade --cask && brew cleanup; brew doctor'
alias npmup='npm update -g'
# Bat
alias cat='bat'
export BAT_THEME="ansi"
export BAT_PAGER="less -RF"
# rustcan port scanner
alias rustscan='docker run -it --rm --name rustscan rustscan/rustscan:1.10.0'
# editors
alias vim='nvim'
export EDITOR="nvim"
export VISUAL="$EDITOR"
# docker
alias up='docker-compose up'
alias down='docker-compose down'
# gcloud
export CLOUDSDK_PYTHON=/usr/bin/python3
# Metasploit
alias msfc='/opt/metasploit-framework/bin/msfconsole'
# powerlevel10k update
alias p10k_update='git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull'

# this makes it work
eval $(thefuck --alias)

. /usr/local/etc/profile.d/z.sh

autoload -U +X bashcompinit && bashcompinit

# NVM path
export NVM_DIR="$HOME/.nvm"

# ddig
# return dns record(s) from URL
# usage: ddig https://www.google.com
#
# ; <<>> DiG 9.10.6 <<>> www.google.com
# ;; global options: +cmd
# ;; Got answer:
# ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 19632
# ;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1
#
# ;; OPT PSEUDOSECTION:
# ; EDNS: version: 0, flags:; udp: 1232
# ;; QUESTION SECTION:
# ;www.google.com.			IN	A
#
# ;; ANSWER SECTION:
# www.google.com.		221	IN	A	172.217.4.196
#
# ;; Query time: 23 msec
# ;; SERVER: 192.0.2.2#53(192.0.2.2)
# ;; WHEN: Mon Aug 02 09:07:01 EDT 2021
# ;; MSG SIZE  rcvd: 59
function ddig() {
    echo $1 | awk -F/ '{print $3}' | xargs dig
}

# nvm sourced
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# fzf bindings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

    autoload -Uz compinit
    compinit
fi

# Wasmer
export WASMER_DIR="/Users/jgipson/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

export PATH="$HOME/.poetry/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"

source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)'$PS1

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jgipson/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jgipson/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jgipson/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jgipson/google-cloud-sdk/completion.zsh.inc'; fi

# init starship
# eval "$(starship init zsh)"
export PATH="$PATH:$HOME/.spicetify"
