# TODO: extract $HOME/app
# TODO: modify $PATH and add to .bashrc to avoid using sudo
# Getting neovim and storing it in $HOME/app
mkdir -p $HOME/app
#curl -L https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage -o $HOME/app/nvim.appimage
curl -L https://github.com/neovim/neovim/releases/download/stable/nvim.appimage -o $HOME/app/nvim.appimage
chmod u+x $HOME/app/nvim.appimage
sudo ln -sf $HOME/app/nvim.appimage /usr/local/bin/nvim
ln -sTf $PWD/nvim $HOME/.config/nvim

# TODO: rewrite dependences installation
sudo apt -y install unzip
sudo apt -y install build-essential
sudo apt -y install manpages-dev

# tmux conf
ln -sTf $PWD/tmux.conf $HOME/.tmux.conf

# bash conf
ln -sTf $PWD/bash_aliases $HOME/.bash_aliases
ln -sTf $PWD/bashrc $HOME/.bashrc

# ripgrep
sudo apt-get install ripgrep
sudo apt-get install fzf
sudo apt-get install fd-find

# code dir
# ln -sTf $PWD/../code $HOME/code

# notes dir
# ln -sTf $PWD/../notes $HOME/notes

# Alacritty
# ln -sTf $PWD/alacritty.yml $HOME/.config/alacritty/alacritty.yml
