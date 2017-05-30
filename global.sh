# install command line tools
if [ ! -d "$(xcode-select -p)" ]; then
	xcode-select --install
fi

# install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# update brew
brew update

# install zsh
curl -L http://install.ohmyz.sh | sh

# install homebrew packages
brew install \
tree \
ssh-copy-id \
wget \
jpegoptim \
pngcrush \
colordiff \
imagemagick \
graphicsmagick \
youtube-dl \
autojump \
npm \
bower \
htop

# install cask
brew tap caskroom/cask

# install apps
brew cask install \
1password \
ableton-live-suite \
google-chrome \
firefox \
sequel-pro \
dropbox \
flux \
slack \
spotify \
skype \
flash-player \
sublime-text \
transmit \
vlc \
unrar \
