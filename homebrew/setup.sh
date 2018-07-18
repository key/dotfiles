#!/bin/bash

## Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


## Install packages
packages=(
	"dep",
	"goenv",
	"jq",
	"pipenv",
	"pyenv-virtualenv",
	"pyenv-virtualenvwrapper",
	"pyenv",
	"zsh",
	"rbenv",
	"rbenv-bundler",
	"postgresql",

	"rabbitmq",
	"redis",
)

for p in ${packages[@]}; do
	brew install ${p}
done


## Install packages from cask
cask-packages=(
	"atom",
	"appcode",
	"discord",
	"pycharm",
	"intellij-idea",
	"sublime-text",
	"google-japanese-ime",
	"google-chrome",
	"vlc",
	"OmniPlan",
	"OmniGraffle",
)

for p in ${cask-packages[@]}; do
	brew tap install ${p}
done
