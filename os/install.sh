#!/bin/bash


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

create_symlinks() {

    declare -a FILES_TO_SYMLINK=(

        "shell/.bash_profile"
        "shell/.bashrc" "shell/.inputrc" 
        "git/.gitconfig"

        "vim/.vim"
        "vim/.vimrc"
    )

    local i=""
    local sourceFile=""
    local targetFile=""

    declare -a CONFIGS_TO_SYMLINK=(

        "config/i3"
        "config/ranger"
        "config/tizonia"
	"config/termite"
	"config/compton"
	"config/polybar"

    )

    local i=""
    local sourceFile=""
    local targetFile=""

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    for i in "${FILES_TO_SYMLINK[@]}"; do

        sourceFile="$(cd .. && pwd)/$i"
        targetFile="$HOME/$(printf "%s" "$i" | sed "s/.*\/\(.*\)/\1/g")"

        if [ ! -e "$targetFile" ]; then
		ln -fs $sourceFile $targetFile
		echo $targetFile → $sourceFile
        elif [ "$(readlink "$targetFile")" == "$sourceFile" ]; then
            echo "$targetFile → $sourceFile"
        else
		echo "file $targetFile exists!"
        fi

    done

    for i in "${CONFIGS_TO_SYMLINK[@]}"; do

        sourceFile="$(cd .. && pwd)/$i"
        targetFile="$HOME/.config/$(printf "%s" "$i" | sed "s/.*\/\(.*\)/\1/g")"

        if [ ! -e "$targetFile" ]; then
		ln -fs $sourceFile $targetFile
		echo $targetFile → $sourceFile
        elif [ "$(readlink "$targetFile")" == "$sourceFile" ]; then
            echo "$targetFile → $sourceFile"
        else
		echo "file $targetFile exists!"
        fi

    done

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    echo "\n • Create symbolic links\n\n"
    create_symlinks "$@"
}

main "$@"

# chrome
if [ $(dpkg-query -W -f='${Status}' google-chrome-stable 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
	sudo apt-get install libxss1 libappindicator1 libindicator7
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo apt install ./google-chrome*.deb
	rm ./google-chrome*.deb
fi

# Packages
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y \
	eog \
	trash-cli \
	nodejs \
	vim \
	feh \
	playerctl \
	ranger \
	xorg \

# Polybar
sudo add-apt-repository https://launchpad.net/~kgilmer/+archive/ubuntu/speed-ricer
sudo apt install -y polybar

vim +'PlugInstall --sync' +qa
# Wallpapers
[ ! -d ~/Pictures/Wallpapers ] && echo creating &&  mkdir -p ~/Pictures/Wallpapers
ln -sv ~/.dotfiles/Wallpapers/* ~/Pictures/Wallpapers

# Gogh
sudo apt-get install dconf-cli uuid-runtime

mkdir -p "$HOME/src"
cd "$HOME/src"
git clone https://github.com/Mayccoll/Gogh.git gogh
cd gogh/themes

export TERMINAL=gnome-terminal
./dark-pastel.sh
