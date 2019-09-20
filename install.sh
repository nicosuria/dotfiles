sudo apt-get install vim
curl https://raw.githubusercontent.com/nicosuria/vimrc/master/.vimrc --output ~/.vimrc
mkdir ~/.vim/bundle
mkdir ~/.vim/autoload
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd ~/.vim/bundle ; git clone git://github.com/altercation/vim-colors-solarized.git
curl https://raw.githubusercontent.com/nicosuria/vimrc/master/.vimrc --output ~/.vimrc
