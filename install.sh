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
brew install --cask lastpass
sleep 3
open -a LastPass
brew install --cask brave-browser
sleep 3
open -a Brave\ Browser
brew install --cask spotify
sleep 3
open -a Spotify

echo "✨✨✨"
echo "Installing everthing else.  This is going to take awhile!"
echo "✨✨✨"

# MacOS Changes
# https://github.com/mathiasbynens/dotfiles/blob/main/.macos

# Set the icon size of Dock items to 50 pixels
defaults write com.apple.dock tilesize -integer 50

# Show only open applications in the Dock
defaults write com.apple.dock static-only -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

killall Dock

# Communication
brew install --cask slack
brew install --cask telegram
brew install --cask discord
brew install --cask loom

# OS Basics
brew install --cask firefox
brew install --cask flux
brew install --cask alfred
brew install --cask atext
brew install --cask notion
brew install --cask grammarly
brew install --cask harvest
brew install --cask memory-cleaner

# Developer
brew install --cask colorpicker-materialdesign
brew install --cask dash
brew install --cask drawio
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask docker
brew install --cask github
brew install --cask noun-project
brew install --cask pgadmin4
brew install --cask postman
brew install --cask ngrok
brew install --cask skitch
brew install git
brew install postgresql
brew install redis
touch ~/.bash_profile
touch ~/.bashrc
brew install node
brew install yarn

# Media
brew install --cask plex
brew install --cask figma

# At the bottom because it asks for sudo password
brew install --cask zoom
brew install --cask google-drive


echo ""
echo ""
echo "✨✨✨"
echo "Installation Complete"
echo "✨✨✨"
