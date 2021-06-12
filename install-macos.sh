#!/usr/bin/env bash

set -e

echo '--- Running updates'
brew update
brew upgrade

echo '--- Installing developer tools'
xcode-select --install || true
brew install cocoapods composer gh php php@7.4 node hugo pre-commit swiftformat

echo '--- Installing CLI tools'
brew install act bat exa fish mariadb postgresql neofetch starship smartmontools tmux watch youtube-dl fzf fd micro
micro -plugin install filemanager fzf

echo '--- Installing NodeJS global tools'
npm i -g diff-so-fancy tldr

echo '--- Installing Homebrew casks'
brew install --cask \
    0xed \
    aerial \
    alfred \
    android-platform-tools \
    appcleaner \
    clean-me \
    cyberduck \
    daisydisk \
    dbeaver-enterprise \
    discord \
    dolphin-dev \
    firefox \
    font-fira-code-nerd-font \
    fork \
    gpg-suite-no-mail \
    handbrake \
    iina \
    imazing \
    insomnia \
    intel-power-gadget \
    jetbrains-toolbox \
    knockknock \
    latest \
    logitech-options \
    macs-fan-control \
    microsoft-teams \
    minecraft \
    nextcloud \
    openboardview \
    plex \
    qbittorrent \
    sf-symbols \
    slack \
    spotify \
    steam \
    swiftformat-for-xcode \
    syncthing \
    teamviewer \
    unclutter \
    visual-paradigm-ce \
    vmware-fusion \
    vscodium \
    whatsyoursign \
    wireshark
    
echo '--- Installing configuration files'
cp -rv .config ~
cp -v .tmux.conf ~
cp -v .gitconfig ~

echo '--- Adjusting for macOS'
sed -i '' 's+/usr/share/fzf+/usr/local/opt/fzf+' ~/.config/fish/functions/fish_user_key_bindings.fish
