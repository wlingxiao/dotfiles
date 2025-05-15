#!/usr/bin/env bash

### bling.sh source start
test -f /usr/share/bazzite-cli/bling.sh && source /usr/share/bazzite-cli/bling.sh
### bling.sh source end

### dotnet and dotnet tools
DOTNET_ROOT=$HOME/.dotnet
export DOTNET_ROOT
export PATH="$PATH:$DOTNET_ROOT"
export PATH="$PATH:$DOTNET_ROOT/tools"

### nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### proxy
set-proxy(){
    export HTTP_PROXY=http://127.0.0.1:1080
    export HTTPS_PROXY=$HTTP_PROXY
    export http_proxy=$HTTP_PROXY
    export https_proxy=$HTTP_PROXY
}

unset-proxy(){
    # https://stackoverflow.com/questions/6877727/how-do-i-delete-an-exported-environment-variable
    unset HTTP_PROXY
    unset HTTPS_PROXY
    unset http_proxy
    unset https_proxy
}

# jdk
export JAVA_HOME="$HOME/.jdks/temurin-24.0.1"
export PATH="$PATH:$JAVA_HOME/bin"

# Use Bitwarden as SSH Agent.
export SSH_AUTH_SOCK=$HOME/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock
