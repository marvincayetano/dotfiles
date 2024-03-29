# ZSH COMPLETION
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{green}[%b]%f'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='${PWD/#$HOME/~}${vcs_info_msg_0_} '

# Permission denied fix ..
setopt autocd

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# OTHER
alias fp="sudo lsof -i :"

# PNPM
alias p="pnpm"
alias ps="pnpm start"
alias pd="pnpm dev"
alias pi="pnpm install"
alias pa="pnpm add"
alias pid="pnpm add -D"
alias pig="sudo pnpm add -g"
alias pu="pnpm remove"
alias pcg="pnpm codegen"
alias pug="sudo pnpm remove --global"

# CODE
alias c="code ."
alias e="exit"

# NPM
alias nr="npm run"
alias nrt="npm run test"
alias ns="npm run start"
alias nsdg="npm run start:debug"
alias nsd="npm run start:dev"
alias nd="npm run dev"
alias ni="npm i"
alias nid="npm i --save-dev"
alias nig="sudo npm i -g"
alias nu="npm uninstall"
alias ncg="npm run codegen"
alias nug="sudo npm uninstall -g"

# git commit --date="10 day ago" -m "Your commit message"
alias gs="git status"
alias gm="git merge"
alias gmd="gcd; gl; gc -; gm development;"
alias gh="git stash"
alias ghp="git stash pop"
alias gr="git rebase"
alias grc="git rebase --continue"
alias grc="git rebase --continue"
alias gl="git pull"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gcd="git checkout development"
alias gcl="git clone"
alias gp="git push -u origin HEAD"
alias gpm="git push origin main"
alias gb="git branch"
alias gbd="git branch -d"
alias yw="yarn watch"
alias ys="yarn start"
alias yd="yarn dev"
alias ch='git commit -m "'
alias fx='git commit -m "Fix: '

# TERRAFORM
alias ta='terraform apply -auto-approve'
alias ti='terraform init'
alias tp='terraform plan'
alias td='terraform destroy -target'
alias ab='open ~/.aws/credentials'


# alias nt='git commit -m "📄 Note:'
# alias ch='git commit -m "🔥 Chore:'
# alias fx='git commit -m "👍 Fix:'
# alias ft='git commit -m "🚀 Feat:'
# alias dc='git commit -m "📄 Doc:'
alias ga='git add'
alias fit='cd ~/Documents/Personal/pourmoncorpse; yd'
alias fitt='cd ~/Documents/Personal/pourmoncorpsed; yd'

export PNPM_HOME="/Users/marvin/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
