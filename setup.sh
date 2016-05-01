# Install sublime
sudo apt-get install sublime-text

# Config git
git config --global alias.st status
git config --global user.name "Debora Duarte"
git config --global user.email deboraaline@gmail.com
git config --global core.editor subl

# Install lein
sudo mv lein /usr/bin/lein
sudo chmod a+x /usr/bin/lein
lein

# Install rvm, ruby, etc
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
sudo apt-get install curl
\curl -sSL https://get.rvm.io | bash -s stable
source /home/debora/.rvm/scripts/rvm
rvm install ruby