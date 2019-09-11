echo "Installs and configs sublime"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text
cp sublime-config ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
sudo ln -s /opt/sublime/sublime_text ~/bin/subl
echo