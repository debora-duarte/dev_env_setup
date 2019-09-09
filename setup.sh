set -e

echo "Installs sublime"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text
cp sublime-config ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
echo

echo "Configs git"
cp .gitconfig ~/.gitconfig
cp config-PS1.sh ~/.config-PS1.sh
cp git-completion.bash ~/.git-completion.bash
echo "source ~/.config-PS1.sh" >> ~/.bashrc
echo "source ~/.git-completion.bash" >> ~/.bashrc
echo

echo "Installs java"
sudo apt install openjdk-8-jdk
echo

echo "Installs lein"
sudo apt install leiningen
echo

echo "Installs rvm, ruby, etc"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
sudo apt-get install curl
\curl -sSL https://get.rvm.io | bash -s stable
source /home/debora/.rvm/scripts/rvm
rvm install ruby
echo

echo "Adds some alias"
echo >> ~/.bashrc
echo "alias ls='ls -GFh'" >> ~/.bashrc
echo

echo "Configs bashrc to backup config files"
echo >> ~/.bashrcs
echo "unalias cp" >> ~/.bashrc
echo "cp ~/.config/terminator/config ~/dev/dev_env_setup/terminator-config" >> ~/.bashrc
echo "cp ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings ~/dev/dev_env_setup/sublime-config" >> ~/.bashrc
echo

echo "Installs nvm and node tools"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
nvm install v4.3.2 # node version fow aws lambda sdk
echo "nvm use --delete-prefix v4.3.2 --silent" >> ~/.bashrc
sudo npm install -g n
sudo npm install -g flow-bin
echo

echo "Installs stack"
curl -sSL https://get.haskellstack.org/ | sh
echo
