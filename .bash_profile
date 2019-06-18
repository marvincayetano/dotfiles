# SHOW GIT BRANCH
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# GIT AUTO COMPLETION
test -f ~/.git-completion.bash && . $_

# REACT NATIVE
alias rn="react-native run-android"

# NPM
alias r="npm run"
alias rs="npm run start"
alias rd="npm run dev"
alias i="npm i"
alias id="npm install --save-dev"
alias u="npm uninstall"
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
