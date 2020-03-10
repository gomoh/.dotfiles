.PHONY: help install update deploy

help:
	@echo '    "make deploy"     Create symlink.'
	@echo '    "make update"     Update dotfiles.'
	@echo '    "make install"    Execute commands , update -> deploy .'

install: update deploy

update:
	git pull origin master

deploy:
	@mkdir -p -m 700 ${HOME}/.ssh
	@ln -sfnTv $(abspath xdg.config/ssh/config) ${HOME}/.ssh/config
	@ln -sfnTv $(abspath xdg.config) ${HOME}/.config

