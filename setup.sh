mv ./.zshrc $HOME/.temp.zshrc
mv ./.zsh_aliases $HOME/.zsh_aliases
mv ./.backup.zshrc $HOME/.backup.zshrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mv ./.zshrc $HOME/.zshrc

cd "$HOME/.oh-my-zsh/custom/plugins" && git clone https://github.com/MenkeTechnologies/zsh-expand.git 
cd $HOME
source ./.zshrc
