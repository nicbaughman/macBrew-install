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

# Communication
brew install --cask slack
brew install --cask whatsapp
brew install --cask telegram
brew install --cask discord
brew install --cask loom

# OS Basics
brew install --cask firefox
brew install --cask alfred
brew install --cask atext
brew install --cask notion
brew install --cask google-drive
brew install --cask grammarly
brew install --cask harvest

# Developer
brew install --cask colorpicker-materialdesign
brew install --cask dash
brew install --cask datadog-agent
brew install --cask drawio
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask docker
brew install --cask github
brew install --cask githubpulse
brew install --cask noun-project
brew install --cask pgadmin4
brew install --cask postman
brew install git
brew install postgresql
brew install redis
touch ~/.bash_profile
touch ~/.bashrc
(cd /tmp && ([[ -d sexy-bash-prompt ]] || git clone --depth 1 --config core.autocrlf=false https://github.com/twolfson/sexy-bash-prompt) && cd sexy-bash-prompt && make install) && source ~/.bashrc

brew install node
brew install yarn

# Media
brew install --cask plex
brew install --cask figma

# At the bottom because it asks for sudo password
brew install --cask zoom


echo ""
echo ""
echo "✨✨✨"
echo "Installation Complete"
echo "✨✨✨"
