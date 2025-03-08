mkdir -p /home/$USER/.fonts
cd /home/$USER/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/IosevkaTerm.zip
unzip IosevkaTerm.zip

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Iosevka.zip
unzip Iosevka.zip

fc-cache -v
fc-cache-64 -v

rm -fr IosevkaTerm.zip
rm -fr Iosevka.zip

rm -fr README.md
rm -fr LICENSE.md

