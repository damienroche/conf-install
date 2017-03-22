# install ruby with rbenv
brew install rbenv ruby-build && source ~/.zshrc
rbenv install 2.3.3
rbenv global 2.3.3

# Before install Rails be sure ruby -v is 2.3.3
# if not add rbenv instructions to your ~/.bash_profile ou ~/.zshrc

# install Rails
gem install bundler pry hub
gem install rails