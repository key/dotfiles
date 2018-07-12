#!/bin/bash

## Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


## Install packages
packages=(
	"pipenv",
	"pyenv-virtualenv",
	"pyenv-virtualenvwrapper",
	"pyenv",
	"zsh",
	"postgresql"
)

for p in ${packages[@]}; do
	brew install ${p}
done


## Install packages from cask
cask-packages=(
	"appcode",
	"discord",
	"pycharm",
	"intellij-idea",
	"sublime-text",
	"google-japanese-ime",
	"google-chrome",
	"OmniPlan",
	"OmniGraffle",
)

for p in ${cask-packages[@]}; do
	brew tap install ${p}
done
