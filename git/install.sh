#!/bin/sh

mkdir -p ~/.config/git

TMPFILE=$(mktemp)
echo "$TMPFILE"

# personal ignore settings
echo "# Personal ignore settings" >>"$TMPFILE"
cat ./dot-gitignore >"$TMPFILE"

# tools
{
	cat ../vendor/github/gitignore/Global/JetBrains.gitignore
	cat ../vendor/github/gitignore/Global/Xcode.gitignore
	cat ../vendor/github/gitignore/Global/macOS.gitignore
	cat ../vendor/github/gitignore/Global/Ninja.gitignore
} >>"$TMPFILE"

# programming language
{
	cat ../vendor/github/gitignore/Python.gitignore
	cat ../vendor/github/gitignore/C.gitignore
	cat ../vendor/github/gitignore/C++.gitignore
	cat ../vendor/github/gitignore/CMake.gitignore
	cat ../vendor/github/gitignore/Go.gitignore
	cat ../vendor/github/gitignore/Ruby.gitignore
	cat ../vendor/github/gitignore/Rust.gitignore
	cat ../vendor/github/gitignore/Sass.gitignore
	cat ../vendor/github/gitignore/Terraform.gitignore
	cat ../vendor/github/gitignore/Objective-C.gitignore
	cat ../vendor/github/gitignore/Swift.gitignore
} >>"$TMPFILE"

install -m 644 "$TMPFILE" ~/.config/git/ignore

echo "Succeeded!"
