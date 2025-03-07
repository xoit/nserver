# Add a new user other than root
sudo adduser icsteve --shell /usr/bin/tcsh
sudo passwd icsteve
## The following command will open a file
## Check the line for root and do the same for icsteve
visudo

# Start install apps
sudo yum update
sudo yum upgrade

# Install tcsh, git, vncserver, and gnome
sudo yum install tcsh
sudo yum install git
sudo yum install tigervnc-server
sudo yum -y groups install "GNOME Desktop"

# Start the vncserver
sudo startx &
su - icsteve
vncpasswd
vncserver -geometry 1920x1080

# Install library for developers
sudo yum install -y gcc make ncurses ncurses-devel
sudo yum install -y vim-X11

# Install daily common used runtime
sudo yum install -y tcl expect tk
sudo yum install -y python3
sudo yum install -y php

# Use this command to change the finger output
## chfn = Change Finger
chfn

# Install rlwrap
cd ~/.local/repo
git clone https://github.com/hanslub42/rlwrap.git
sudo yum install -y autoconf automake
sudo yum install -y realine-devel
./configure
sudo make install

# Install zellij and tmux
sudo yum install -y tmux
mkdir -p ~/.local/repo/zellij/bin
cd ~/.local/repo/zellij/bin
wget https://github.com/zellij-org/zellij/releases/download/v0.41.2/zellij-x86_64-unknown-linux-musl.tar.gz
tar xzvf zellij-x86_64-unknown-linux-musl.tar.gz
rm -fr zellij-x86_64-unknown-linux-musl.tar.gz

# Upgrade git and curl versions to newer ones
sudo yum groupinstall 'Development Tools'
sudo yum install procps-ng curl file git
sudo yum -y remove git
sudo yum -y remove git-*
sudo yum -y install https://packages.endpointdev.com/rhel/7/os/x86_64/endpoint-repo.x86_64.rpm
sudo yum install git

sudo yum -y install openldap*
sudo yum -y install openssl*
mkdir -p ~/.local/repo/
cd ~/.local/repo/
sudo wget https://curl.se/download/curl-7.88.0.zip
sudo unzip curl-7.88.0.zip 
mv curl-7.88.0 curl
cd curl/
sudo ./configure  --with-ssl --with-zlib --with-gssapi --enable-ldap --enable-ldaps --with-libssh --with-nghttp2
sudo make
sudo make install
curl --version

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
setenv HOMEBREW_CURL_PATH /usr/local/bin/curl

