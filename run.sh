#!/bin/sh

vimrcPath=$(realpath dotVimrc)
vimJ2mPath=$(realpath j2m.vim)
zshrcPath=$(realpath dotZshrc)
gitconfigPath=$(realpath dotGitConfig)
tmuxConfPath=$(realpath dotTmux.conf)

#vim:
rm ~/.vimrc; ln -s $vimrcPath ~/.vimrc
rm ~/.vim/j2m.vim; ln -s $vimJ2mPath ~/.vim/j2m.vim

# zsh:
rm ~/.zshrc; ln -s $zshrcPath ~/.zshrc

#git:
rm ~/.gitconfig; ln -s $gitconfigPath ~/.gitconfig

#tmux:
rm ~/.tmux.conf; ln -s $tmuxConfPath ~/.tmux.conf
