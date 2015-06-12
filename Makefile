DOT_EXCLUDES    := .git .gitignore
DOT_ENTRY       := $(filter-out ${DOT_EXCLUDES}, $(wildcard .??*))

FHS_ROOT        := ${HOME}/usr
FHS_ENTRY       := bin


.PHONY: help install update deploy
help:
	@echo '    "make deploy"     Create symlink.'
	@echo '    "make update"     Update dotfiles.'
	@echo '    "make install"    Execute commands , update -> deploy .'

install: update deploy

update:
	git pull origin master

deploy:
	@$(foreach f, ${DOT_ENTRY}, ln -sfnTv $(abspath ${f}) ${HOME}/${f};)
	@$(foreach f, ${FHS_ENTRY}, ln -sfnTv $(abspath ${f}) ${FHS_ROOT}/${f};)

