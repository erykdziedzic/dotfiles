# Essentials
alias rm=trash
alias bt=bluetoothctl

#React-native
complete -W 'run-android start log-android' react-native
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
export REPO_OS_OVERRIDE=linux
# export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export JAVA_HOME="/usr/lib/jvm/jdk1.8.0_221"
export PATH=~/.npm-global/bin:$PATH
export PATH=~/Android/Sdk/emulator:$PATH
export PATH=/usr/local/lib/nodejs/node-v14.15.0-linux-x64/bin:$PATH
export PATH=~/android-studio/bin:$PATH
export ANDROID_SDK_ROOT="/home/dziedzic/Android/Sdk"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export GRADLE_USER_HOME=$HOME/.gradle

export PATH=~/.npm-global/bin:$PATH
complete -W '-avd Nexus_4' emulator

# Python
alias pip="python3 -m pip"
alias py="python3"
alias python="python3"
export PATH=$PATH:~/.local/bin

# Docker
alias backend="docker build -t backend ~/projects/backend/ && docker-compose -f ~/projects/backend/docker-compose.yml -f ~/projects/backend/docker-compose.override.yml --project-directory ~/projects/backend/ up -d && docker logs backend_backend_1 -f"

export BACKEND_CONFIG=../config.cfg

#tizonia
alias spotify-beats="tizonia --spotify-playlist-id=37i9dQZF1DXa2SPUyWl8Y5"
alias spotify-coding="tizonia --spotify-playlist-id=5SgJR30RfzR5hO21TsQhBp"
alias spotify-programming="tizonia --spotify-playlist-id=2mtlhuFVOFMn6Ho3JmrLc2"
alias spotify-programming-music="tizonia --spotify-playlist-id=37i9dQZF1DX4sWSpwq3LiO"
alias spotify-lo-fi="tizonia --spotify-playlist-id=37i9dQZF1DWWQRwui0ExPn"
alias spotify-epic-gaming="tizonia --spotify-playlist-id=37i9dQZF1DX8GjsySWIS1x"
alias spotify-costa-coffee="tizonia --spotify-playlist-id=7x9QAmh8C0XQidffIlFcaz"
alias spotify-peaceful-piano="tizonia --spotify-playlist-id=37i9dQZF1DX4sWSpwq3LiO"

#Nodejs
VERSION=v12.13.0
DISTRO=linux-x64
export PATH=/usr/local/lib/nodejs/bin:$PATH
export PATH=$HOME/.npm-global/bin:$PATH
# VERSION=v12.13.0
# DISTRO=linux-x64
# export PATH=$HOME/.npm-global/bin:$PATH

#battery-popup
export PATH=$PATH:/usr/local/lib/i3-battery-popup

#ranger
export EDITOR=vim

# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
if [ -e /home/dziedzic/.nix-profile/etc/profile.d/nix.sh ]; then . /home/dziedzic/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

#clipboard
alias xclip="xclip -selection c"

# adb shake
alias shake="adb shell input keyevent 82"

# tunelling
alias ngrok='~/ngrok'
alias stayhome-tunnel='~/ngrok http -subdomain=stayhome2 -region=eu 3000'
export DEV_REDIRECT_URI=https://stayhome2.eu.ngrok.io
export VIDEOS_PATH=/home/dziedzic/Videos/

# javascript
alias eslintall="npx eslint . --fix"
alias prettierall="npx prettier '**/*.js' --write"
alias importsortall="npx import-sort '**/*.js' -l --write"
alias jsfixall="eslintall && prettierall && importsortall"

# renaming
alias rename-increment="ls -v | cat -n | while read n f; do mv -n "$f" "$n.png"; done"

# docker typos
alias dokcer=docker

alias killpoly="pgrep polybar | xargs bash -c 'echo $0'"
export WIDGET_API_DATA_DIR=~/projects/widget-api-data/data/
