#!/usr/bin/env bash

echo '--- Running updates'
sudo dnf update
flatpak update -y

echo '--- Installing developer tools (needs superuser access for DNF)'
sudo dnf install composer pre-commit

echo '--- Installing CLI tools (needs superuser access for DNF)'
sudo dnf install bat fish fd-find fzf gh micro ncdu neofetch starship wl-clipboard tmux

echo '--- Installing NodeJS and global tools (needs superuser access)'
sudo dnf install nodejs npm
sudo npm i -g diff-so-fancy tldr

echo '--- Adding flatpak repo'
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo '--- Installing flatpak GUI apps'
flatpak install flathub \
    com.discordapp.Discord \
    com.github.tchx84.Flatseal \
    com.microsoft.Teams \
    com.spotify.Client \
    io.dbeaver.DBeaverCommunity \
    org.telegram.desktop

echo '--- Installing DNF GUI apps'
sudo dnf install gnome-extensions-app gnome-tweaks geary

echo '--- Installing configuration files'
cp -rv .config ~
cp -v .tmux.conf ~
cp -v .gitconfig ~
