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
open -a Spectacle.app
brew install --cask 1password
open -a 1Password\ 7
brew install --cask google-chrome
open -a Google\ Chrome
brew install --cask spotify
open -a Spotify

echo "✨✨✨"
echo "Installing everthing else.  This is going to take awhile!"
echo "✨✨✨"
# OS Basics
brew install --cask firefox
brew install --cask notion
brew install --cask clocker
brew install --cask transmission

# Developer
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask atom
brew install --cask docker
brew install gh
brew install postgresql
brew install --cask navicat-premium-essentials
brew install ruby-install
brew install chruby
brew install node
brew install yarn
brew install gawk

# Communication
brew install --cask slack
brew install --cask whatsapp
brew install --cask telegram
brew install --cask discord
brew install --cask zoom
brew install --cask loom

# Media
brew install --cask vlc
brew install --cask audacity
brew install handbrake

echo ""
echo ""
echo "✨✨✨"
echo "Installation Complete"
echo "✨✨✨"
