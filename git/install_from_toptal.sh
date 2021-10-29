#!/bin/bash

TMPFILE=$(mktemp)

curl \
	-o "$TMPFILE" \
	https://www.toptal.com/developers/gitignore/api/osx,linux,windows,python,pycharm,rubymine,visualstudiocode,jetbrains

install -m 644 "$TMPFILE" ~/.config/git/ignore
