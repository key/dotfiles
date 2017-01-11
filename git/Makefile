install: mac
	/usr/bin/install -m 644 dot-gitrc ~/.gitrc

mac:
	/usr/bin/install -m 644 ../vendor/github/gitignore/Global/macOS.gitignore ~/.gitignore_global
	git config --global core.excludesfile ~/.gitignore_global

win:
	/usr/bin/install -m 644 ../vendor/github/gitignore/Global/Windows.gitignore ~/.gitignore_global
	git config --global core.excludesfile ~/.gitignore_global
