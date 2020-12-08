#!/bin/sh

echo Additionally required installs:

echo '> sudo apt install neovim git zsh tmux curl'
echo '> sudo apt install gnome-tweak-tool gnome-tweaks'
echo '> sudo apt install gpaste gnome-shell-extensions-gpaste'
echo '> sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
echo "> sh -c 'curl -fLo \"\$\{XDG_DATA_HOME:-\$HOME/.local/share\}\"/nvim/site/autoload/plug.vim --create-dirs " \
       "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'";
echo "> mkdir .config/nvim"
echo "> echo 'source ~/.vimrc' >> .config/nvim/init.vim"
echo "> sudo apt install universal-ctags silversearcher-ag fzf"
echo "> git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
echo "> wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash"
echo "> nvm install --lts"
echo "> mkdir ~/.config/nvim/plugins/"
echo "> touch ~/.config/nvim/plugins/coc.vim"
echo "> npm install -g neovim"
echo ""
echo "Required python installations"
echo "> bash Miniconda3-latest-Linux-x86_64.sh"
echo "> python -m pip install pynvim"
echo "> conda install pyvim flake8"
echo "> conda install flake8"
echo "> conda install pylint"

vimrcPath=$(realpath dotVimrc)
zshrcPath=$(realpath dotZshrc)
gitconfigPath=$(realpath dotGitConfig)
tmuxConfPath=$(realpath dotTmux.conf)

#vim:
rm ~/.vimrc; ln -s $vimrcPath ~/.vimrc

# zsh:
rm ~/.zshrc; ln -s $zshrcPath ~/.zshrc

#git:
rm ~/.gitconfig; ln -s $gitconfigPath ~/.gitconfig

#tmux:
rm ~/.tmux.conf; ln -s $tmuxConfPath ~/.tmux.conf
