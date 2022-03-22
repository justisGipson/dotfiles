#!/usr/bin/env bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# update homebrew to latest
brew update
# upgrade pre-installed packages
brew upgrade
# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
brew install bash
brew install bash-completion2
# repository taps
brew tap hashicorp/tap
brew tap homebrew/bundle
brew tap homebrew/cask
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions
brew tap homebrew/core
brew tap homebrew/services
brew tap jesseduffield/lazygit
brew tap sambadevi/powerlevel9k
# brew formulae
brew install apktool
brew install bat
brew install circleci
brew install coreutils
brew install ctop
brew install curl
brew install dive
brew install docker-compose
brew install exa
brew install fd
brew install node
brew install firebase-cli
brew install fzf
brew install gh
brew install git
brew install git-delta
brew install git-lfs
brew install glances
brew install golang-migrate
brew install golangci-lint
brew install howdoi
brew install htop
brew install httpie
brew install imagemagick
brew install jq
brew install k9s
brew install kube-ps1
brew install lazygit
brew install less
brew install libpq
brew install librsvg
brew install lima
brew install logstash
brew install minikube
brew install protobuf
brew install mysql
brew install nano
brew install neofetch
brew install neovim
brew install nmap
brew install nnn
brew install osx-cpu-temp
brew install pipenv
brew install postgresql
brew install rlwrap
brew install ruby
brew install shellcheck
brew install spotify-tui
brew install starship
brew install telnet
brew install terminal-notifier
brew install terraformer
brew install terragrunt
brew install thefuck
brew install tldr
brew install wget
brew install yamllint
brew install z
brew install sambadevi/powerlevel9k/powerlevel9k
# casks/applications
brew install --cask 1password
brew install --cask devtoys
brew install --cask docker
brew install --cask fantastical
brew install --cask font-hack-nerd-font
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask postgres
brew install --cask postman
brew install --cask qmk-toolbox
brew install --cask raycast
brew install --cask slack
brew install --cask spotify
brew install --cask vagrant
brew install --cask visual-studio-code
brew install --cask wireshark
brew install --cask zoom
