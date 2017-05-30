# Before install Rails be sure ruby -v is 2.3.3
# if not add "rbenv init" instructions to your ~/.bash_profile ou ~/.zshrc

# install Rails
gem install bundler pry hub
gem install rails

# install Middleman
gem install middleman

# install rsync for middleman deployment
brew tap homebrew/dupes
brew install rsync