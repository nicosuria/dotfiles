sudo apt-get install vim 
mkdir -p ~/.vim/bundle ~/.vim/autoload && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
Ln -sf ~/dotfiles/vimrc ~/.vimrc
