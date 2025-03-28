#!/usr/bin/env bash

### bling.sh source start
test -f /usr/share/bazzite-cli/bling.sh && source /usr/share/bazzite-cli/bling.sh
### bling.sh source end

### dotnet and dotnet tools
export PATH=$PATH:$HOME/.dotnet
export PATH="$PATH:/home/xiao/.dotnet/tools"
DOTNET_ROOT="$(dirname "$(which dotnet)")"
export DOTNET_ROOT

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
