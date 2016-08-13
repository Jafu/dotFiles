#!/bin/sh

vimrcPath=$(realpath dotVimrc)
zshrcPath=$(realpath dotZshrc)
gitconfigPath=$(realpath dotGitConfig)
tmuxConfPath=$(realpath dotTmux.conf)

rm ~/.vimrc; ln -s $vimrcPath ~/.vimrc
rm ~/.zshrc; ln -s $zshrcPath ~/.zshrc
rm ~/.gitconfig; ln -s $gitconfigPath ~/.gitconfig
rm ~/.tmux.conf; ln -s $tmuxConfPath ~/.tmux.conf
