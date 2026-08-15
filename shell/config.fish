fish_add_path /opt/homebrew/bin

alias src="source ~/.config/fish/config.fish"
abbr -a --set-cursor gcm "git commit -m '%'"
abbr -a --set-cursor gcam "git commit -am '%'"

set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -gx PATH $PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator
alias wispr "whisper --model tiny.en -f txt --language en --fp16 False"
alias hush=~/projects/running/.claude/hooks/hush
alias record 'ffmpeg -f avfoundation -i ":0" -af "pan=stereo|c0=c0+c2|c1=c1+c3" -c:a aac -b:a 128k mock.m4a'
