mv ./.zshrc $HOME/.temp.zshrc
mv ./.zsh_aliases $HOME/.zsh_aliases
mv ./.backup.zshrc $HOME/.backup.zshrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mv $HOME/.temp.zshrc $HOME/.zshrc

cd "$HOME/.oh-my-zsh/custom/plugins" && git clone https://github.com/MenkeTechnologies/zsh-expand.git 
cd $HOME

# Add ssh tmux support for Ctrl Shift Alt modifiers
set -g terminal-overrides "xterm*:kLFT5=\eOD:kRIT5=\eOC:kUP5=\eOA:kDN5=\eOB:smkx@:rmkx@"

source ./.zshrc
