DOT_EXCLUDES    := .git .gitignore .ssh
DOT_ENTRY       := $(filter-out ${DOT_EXCLUDES}, $(wildcard .??*))


.PHONY: help install update deploy
help:
	@echo '    "make deploy"     Create symlink.'
	@echo '    "make update"     Update dotfiles.'
	@echo '    "make install"    Execute commands , update -> deploy .'

install: update deploy

update:
	git pull origin master

deploy:
	@mkdir -p ${HOME}/.ssh
	@ln -sfnTv $(abspath .ssh/config) ${HOME}/.ssh/config

	@$(foreach f, ${DOT_ENTRY}, ln -sfnTv $(abspath ${f}) ${HOME}/${f};)

