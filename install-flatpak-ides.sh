#!/bin/bash

# Install the IDEs themselves
flatpak install com.jetbrains.PhpStorm/x86_64/stable \
                com.jetbrains.Rider/x86_64/stable

# Install SDK extensions
flatpak install "org.freedesktop.Sdk.Extension.dotnet/x86_64/20.08" \
                "org.freedesktop.Sdk.Extension.php74/x86_64/20.08" \
                "org.freedesktop.Sdk.Extension.php73/x86_64/20.08" \
                "org.freedesktop.Sdk.Extension.mono6/x86_64/20.08" \
                "org.freedesktop.Sdk.Extension.mono5/x86_64/20.08" \
                "org.freedesktop.Sdk.Extension.node14/x86_64/20.08"
                
# Enable SDK extensions
flatpak --user override --env=FLATPAK_ENABLE_SDK_EXT=php74,php73,php72,node14 com.jetbrains.PhpStorm
flatpak --user override --env=FLATPAK_ENABLE_SDK_EXT=mono6,mono5,dotnet com.jetbrains.Rider
