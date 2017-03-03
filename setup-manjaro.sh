# Install sublime
yaourt -S sublime-text-dev

# Config git
cp .gitconfig ~/.gitconfig
cp config-PS1.sh ~
cp git-completion.bash ~
echo "source ~/config-PS1.sh" >> ~/.bashrc 
echo "source ~/git-completion.bash" >> ~/.bashrc

# Install lein
sudo mv lein /usr/bin/lein
sudo chmod a+x /usr/bin/lein
lein

# Install rvm, ruby, etc
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source /home/debora/.rvm/scripts/rvm
rvm install ruby

echo "alias ls='ls -GFh'" >> ~/.bashrc
echo "subl=subl3" >> ~/.bashrc
