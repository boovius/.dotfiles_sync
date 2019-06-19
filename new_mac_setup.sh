#!/bin/sh

# homebrew and homebrew cask
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew install caskroom/cask/brew-cask

export HOMEBREW_CASK_OPTS="--appdir=~/Applications --fontdir=/Library/Fonts"

# core dev utilities
brew install git
brew install tmux
brew install ack
brew install ag
brew install the_silver_searcher
brew install rbenv
brew install ruby-build
brew install nvm
brew install npm
brew install heroku
brew install redis
brew install bash
brew install reattach-to-user-namespace

# core programs
brew cask install evernote
brew cask install google-chrome
brew cask install spotify
brew cask install dropbox
brew cask install postgres
brew cask install iterm2
brew cask install divvy
brew cask install alfred
brew cask install 1password
brew cask install flycut
brew cask install slack
brew cask install sublime
brew cask install ngrok
brew cask install focused
brew cask cleanup

# ruby
rbenv init
rbenv install 2.3.0
gem install bundler
gem install rails

# node
nvm install v8.2.1
npm install -g mocha

# dotfiles
git clone git@github.com:boovius/.dotfiles_sync.git ~/.dotfiles_sync
cd ~/.dotfiles_sync
chmod +x makesymlinks.sh
./makesymlinks.sh
source ~/.bash_profile

#vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle.vim

#xcode
install_mac_tools() {
  # Do we have to install mac tools?
  XCODE=`xcode-select --version | grep -i 'not found' || true`
  if [[ $? -eq 1 ]]; then
    `xcode-select --install`
  else
    echo "xcode already installed"
    return
  fi
}
install_mac_tools

