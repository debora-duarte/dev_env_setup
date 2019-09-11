echo "Configs git"
cp git/.gitconfig ~/.gitconfig
cp git/config-PS1.sh ~/.config-PS1.sh
cp git/git-completion.bash ~/.git-completion.bash
echo "source ~/.config-PS1.sh" >> ~/.bashrc
echo "source ~/.git-completion.bash" >> ~/.bashrc
echo