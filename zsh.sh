# Zsh Theme
if [ -d "$HOME/.oh-my-zsh" ]; then
	CURRENT_DIR=`pwd`
	THEME_DIR="$HOME/.oh-my-zsh/themes"
	cd "$THEME_DIR"
	if [ ! -f "$THEME_DIR/damien.zsh-theme" ]; then
		echo "-----> Backup Zsh Theme..."
		curl https://raw.githubusercontent.com/damienroche/conf-dotfiles/master/damien.zsh-theme > damien.zsh-theme
	fi
	cd "$CURRENT_DIR"
	curl https://raw.githubusercontent.com/damienroche/conf-dotfiles/master/zshrc > ~/.zshrc
	source ~/.zshrc
fi
