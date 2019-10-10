# GIT COMPLETION
GREEN='\033[0;32m'
NOCOLOR='\033[0m'

source ~/.zsh/.git-prompt.sh
setopt PROMPT_SUBST; PS1='%~ $(__git_ps1 "${GREEN}(%s)${NOCOLOR}") '
fpath=(~/.zsh $fpath)
autoload -U compinit; compinit

# NPM
alias r="npm run"
alias rs="npm run start"
alias rd="npm run dev"
alias i="npm i"
alias id="npm i --save-dev"
alias ig="sudo npm i -g"
alias u="npm uninstall"
alias ug="sudo npm uninstall -g"
alias p="git push origin"
alias g="sudo npm i -g"
alias avd="emulator @Pixel3XL"
alias a="git add ."
alias c="git commit -m"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
