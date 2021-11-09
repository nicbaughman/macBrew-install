#!/bin/bash
set -u

abort() {
  echo "✨✨✨"
  printf "%s\n" "$@"
  echo "✨✨✨"
  exit 1
}

# if bash not installed, then abort
if ! command -v bash > /dev/null
then
  abort "Bash is required to interpret this script."
fi

if ! brew --version > /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "✨✨✨"
echo "Alright, awesome!  Let's get this Mac Rocking!"
echo "Installing the basics: 1Password, Spotify, Chrome and Spectacle 🎧"
echo "✨✨✨"
brew install --cask spectacle
sleep 3
open -a Spectacle
brew install --cask 1password
sleep 3
open -a 1Password\ 7
brew install --cask google-chrome
sleep 3
open -a Google\ Chrome
brew install --cask spotify
sleep 3
open -a Spotify

echo "✨✨✨"
echo "Installing everthing else.  This is going to take awhile!"
echo "✨✨✨"

# Communication
brew install --cask slack
brew install --cask whatsapp
brew install --cask telegram
brew install --cask discord
brew install --cask loom
brew install --cask signal

# OS Basics
brew install --cask firefox
brew install --cask notion
brew install --cask clocker
brew install --cask transmission
brew install --cask the-unarchiver
brew install --cask raindropio

# Developer
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # ZSH
brew install --cask billings-pro
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask atom
brew install --cask docker
brew install --cask sizzy
brew install gh
brew install postgresql
brew install redis
brew install --cask navicat-premium-essentials
brew install ruby-install
brew install chruby
touch ~/.bash_profile
touch ~/.zshrc
echo "source /usr/local/opt/chruby/share/chruby/chruby.sh" >> ~/.bash_profile
echo "source /usr/local/opt/chruby/share/chruby/auto.sh" >> ~/.bash_profile
echo "source /usr/local/opt/chruby/share/chruby/chruby.sh" >> ~/.zshrc
echo "source /usr/local/opt/chruby/share/chruby/auto.sh" >> ~/.zshrc

brew install node
brew install yarn
brew install gawk
ruby-install --latest
ruby-install ruby 3.0.1
ruby-install ruby 2.7.3

# Media
brew install --cask vlc
brew install --cask audacity
brew install handbrake
brew install --cask figma

#Crypto
brew install --cask binance
brew install --cask tradingview

# At the bottom because it asks for sudo password
brew install --cask zoom


echo ""
echo ""
echo "✨✨✨"
echo "Installation Complete"
echo "✨✨✨"
