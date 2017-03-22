# install MariaDB
brew install mariadb
mysql_install_db

# launch MariaDB at login
ln -sfv /usr/local/opt/mariadb/*.plist ~/Library/LaunchAgents
launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mariadb.plist

# unload MariaDB at login
# launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mariadb.plist