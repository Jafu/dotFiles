#!/bin/sh

vimrcPath=$(realpath dotVimrc)
zshrcPath=$(realpath dotZshrc)
gitconfigPath=$(realpath dotGitConfig)
tmuxConfPath=$(realpath dotTmux.conf)
fizshFolder=$(realpath .fizsh)
autosuggestionsFolder=$(realpath .zsh-autosuggestions)

#vim:
rm ~/.vimrc; ln -s $vimrcPath ~/.vimrc

# zsh:
rm ~/.fizsh; ln -s $zshrcPath ~/.fizsh
rm ~/.zsh-autosuggestions; ln -s $zshrcPath ~/.zsh-autosuggestions
rm ~/.zshrc; ln -s $zshrcPath ~/.zshrc

#git:
rm ~/.gitconfig; ln -s $gitconfigPath ~/.gitconfig

#tmux:
rm ~/.tmux.conf; ln -s $tmuxConfPath ~/.tmux.conf
