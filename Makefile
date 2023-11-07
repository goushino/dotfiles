.PHONY: all

all: vim nvim dein coc tmux tig

help:
	cat Makefile

vim:
	ln -svnf ${PWD}/.vimrc ${HOME}/.vimrc

nvim:
	sudo pacman -S neovim
	if [ ! -d ${HOME}/.config/nvim ]; then mkdir -p ${HOME}/.config/nvim; fi
	ln -svnf ${PWD}/.config/nvim/init.vim ${HOME}/.config/nvim/init.vim

dein:
	sh -c "$curl -fsSL https://raw.githubusercontent.com/Shougo/dein-installer.vim/master/installer.sh)"
	ln -svnf ${PWD}/.dein ${HOME}/.dein

coc:
	sudo pacman -S nodejs
	if [ ! -d ${HOME}/.config/nvim ]; then mkdir -p ${HOME}/.config/nvim; fi
	ln -svnf ${PWD}/.config/nvim/coc-settings.json ${HOME}/.config/nvim/coc-settings.json

tmux:
	sudo pacman -S tmux
	ln -svnf ${PWD}/.tmux.conf ${HOME}/.tmux.conf

tig:
	sudo pacman -S tig
	ln -svnf ${PWD}/.tigrc ${HOME}/.tigrc
