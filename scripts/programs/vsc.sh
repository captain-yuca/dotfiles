#!/bin/bash

# https://code.visualstudio.com/docs/setup/linux
echo "⌨️  Installing VSCode"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code
rm microsoft.gpg
function install {
  name="${1}"
  code --install-extension ${name} --force
}

install aaron-bond.better-comments
install batisteo.vscode-django
install bibhasdn.django-html
install bierner.markdown-preview-github-styles
install byi8220.indented-block-highlighting
install christian-kohler.npm-intellisense
install cliffordfajardo.highlight-line-vscode
install cmstead.jsrefactor
install coenraads.bracket-pair-colorizer
install davidanson.vscode-markdownlint
install dbaeumer.vscode-eslint
install dotiful.dotfiles-syntax-highlighting
install eg2.vscode-npm-script
install eamodio.gitlens
install emmanuelbeziat.vscode-great-icons
install glen-84.sass-lint
install hookyqr.beautify
install joaompinto.vscode-graphviz
install Kelvin.vscode-sshfs
install liviuschera.noctis
install mechatroner.rainbow-csv
install mikestead.dotenv
install ms-azuretools.vscode-docker
install ms-python.python
install ms-vscode-remote.remote-containers
install ms-vsliveshare.vsliveshare
install redhat.vscode-yaml
install rido3.wordcount
install simonsiefke.svg-preview
install streetsidesoftware.code-spell-checker
install victoriadrake.kabukicho
install vscode-icons-team.vscode-icons
install wayou.vscode-todo-highlight
install yzhang.markdown-all-in-one
