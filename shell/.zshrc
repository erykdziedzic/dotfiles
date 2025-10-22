export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PATH=$PATH:/Users/dziedzic/Library/Android/sdk/platform-tools
export PATH=$PATH:/Users/dziedzic/Library/Android/sdk/tools
export PATH=$PATH:/Users/dziedzic/Library/Android/sdk/emulator
export PATH=$PATH:/Users/dziedzic/Library/Python/3.8/bin
export ANDROID_HOME=/Users/dziedzic/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk

# bun completions
[ -s "/Users/dziedzic/.bun/_bun" ] && source "/Users/dziedzic/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias producent="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/ProducentPro/ProducentPro.exe"

fpath+=~/.zfunc
autoload -Uz compinit && compinit

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/homebrew/share/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/homebrew/share/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/homebrew/share/google-cloud-sdk/completion.zsh.inc' ]; then . '/opt/homebrew/share/google-cloud-sdk/completion.zsh.inc'; fi
