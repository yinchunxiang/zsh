#install zsh
wget "http://downloads.sourceforge.net/project/zsh/zsh/5.0.2/zsh-5.0.2.tar.gz"
tar xzvf zsh-5.0.2.tar.gz
cd zsh-5.0.2
./configure --prefix=/usr/local
make
sudo make install

#install oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

#update config
sudo chsh -s /usr/local/bin/zsh
mv ~/.zshrc ./zshrc.old
ln -s ~/.zshrc `pwd`/zshrc
