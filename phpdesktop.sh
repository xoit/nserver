mkdir -p ~/.local/repo/phpdesktop
cd ~/.local/repo/phpdesktop

sudo yum install libXScrnSaver
wget https://github.com/cztomczak/phpdesktop/releases/download/linux-v72.0/phpdesktop-linux-72.1.tar.gz
wget https://github.com/cztomczak/phpdesktop/releases/download/linux-v72.0/php-cgi-with-ext

tar xzvf phpdesktop-linux-72.1.tar.gz
rm -fr phpdesktop-linux-72.1.tar.gz
ln -s phpdesktop-linux-72.1 phpdesktop-linux-latest

cd ~/.local/bin
ln -s $HOME/.local/repo/phpdesktop/phpdesktop-linux-72.1/phpdesktop .

# phpdesktop
