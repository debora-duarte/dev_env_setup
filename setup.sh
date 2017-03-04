# Install sublime
sudo apt-get install sublime-text
cp sublime-config ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

# Install and config terminator
sudo apt-get install terminator
cp terminator-config ~/.config/terminator/config

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
sudo apt-get install curl
\curl -sSL https://get.rvm.io | bash -s stable
source /home/debora/.rvm/scripts/rvm
rvm install ruby

echo >> ~/.bashrc
echo "alias ls='ls -GFh'" >> ~/.bashrc
