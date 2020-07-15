#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"


# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install more recent versions of some macOS tools.
brew install vim
brew install openssh
brew install screen

# Install other useful binaries
brew install ack
brew install ssh-copy-id
brew install imagemagick
brew install pv
brew install tree
brew install socat
brew install wget
brew install tmux
brew install autojump
brew install tmate
brew install jq
brew install zsh-syntax-highlighting
brew install pyenv
brew install parquet-eools
brew install kafkacat
brew install fzf
brew install expect
brew install protobuf
brew install telnet
brew install grpcurl
brew install https://raw.githubusercontent.com/kadwanev/bigboybrew/master/Library/Formula/sshpass.rb

# Install dev
brew install go
brew install redis
brew install thrift
brew install node

# Install k8s tools
brew install kubectl
brew install kubectx
brew install kube-ps1
brew install stern
brew install txn2/tap/kubefwd
brew install helm

# Remove outdated versions from the cellar.
brew cleanup
