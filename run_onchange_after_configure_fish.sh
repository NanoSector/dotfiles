#!/bin/bash

echo "--- Setting fish as default shell"
chsh -s $(which fish)

echo "--- Installing Fisher plugin system"
fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"

echo "--- Installing/updating fisher plugins"
fish -c "fisher update"
