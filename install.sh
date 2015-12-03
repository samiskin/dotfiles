cd "$(dirname "$0")"
cp ./.bashrc ~/
cp ./.bash_profile ~/


# Install homebrew if its not installed
which -s brew
if [[ $? != 0 ]] ; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  brew update
fi

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Vundle Plugins
cp ./.vimrc ~/
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/install.py


# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

chsh -s $(which zsh); ok

cp ./.zshrc ~/
cp ./remyagnoster.zsh-theme ~/.oh-my-zsh/themes/

# Install Tmux
brew install tmux
cp ./.tmux.conf ~/
