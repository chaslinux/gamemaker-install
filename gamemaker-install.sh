#!/bin/bash

# gamemaker-install.sh - script for Ubuntu derivatives to install all the required libraries and directories for GameMaker Studio 2
# tested on Xubuntu 22.04 and Linux Mint XFCE 21.3

# The commands for this script are ripped directly from https://help.gamemaker.io/hc/en-us/articles/235186168-Setting-Up-For-Ubuntu

# For Ubuntu 24.04 or 18.04 see the URL above, you need to make some changes.

# chaslinux@gmail.com - blame me for the script

# first, install any updates
sudo apt update && sudo apt upgrade -y

sudo apt install -y build-essential openssh-server clang libssl-dev libxrandr-dev
sudo apt install -y libxxf86vm-dev libopenal-dev libgl1-mesa-dev libglu1-mesa-dev
sudo apt install -y zlib1g-dev libcurl4-openssl-dev ffmpeg libfuse2 curl
sudo apt install -y coreutils 

# Steam Runtimes
sudo mkdir /opt/steam-runtime
curl https://repo.steampowered.com/steamrt-images-scout/snapshots/latest-steam-client-general-availability/com.valvesoftware.SteamRuntime.Sdk-amd64,i386-scout-sysroot.tar.gz | sudo tar -xzf - -C /opt/steam-runtime/

# Linux Deploy
wget https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage
sudo install -m 0755 linuxdeploy-x86_64.AppImage /usr/local/bin/linuxdeploy

# AppImage
wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage
sudo install -m 0755 appimagetool-x86_64.AppImage /usr/local/bin/appimagetool
