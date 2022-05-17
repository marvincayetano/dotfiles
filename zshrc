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

# redis
export PATH=$PATH:$HOME/Downloads/redis-stable/src

# Permission denied fix ..
setopt autocd

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

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

# NPM
alias nr="npm run"
alias nrt="npm run test"
alias ns="npm run start"
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
alias gr="git rebase"
alias grc="git rebase --continue"
alias grc="git rebase --continue"
alias gl="git pull"
alias gc="git checkout"
alias gcl="git clone"
alias gp="git push origin"
alias gpm="git push origin main"
alias gb="git branch"
alias yw="yarn watch"
alias ys="yarn start"
alias yd="yarn dev"
alias nt='git commit -m "📄 Note:'
alias ch='git commit -m "🔥 Chore:'
alias fx='git commit -m "👍 Fix:'
alias ft='git commit -m "🚀 Feat:'
alias dc='git commit -m "📄 Doc:'
alias ga='git add'
alias fit='cd ~/Documents/Personal/pourmoncorpse; yd'
alias fitt='cd ~/Documents/Personal/pourmoncorpsed; yd'

export PNPM_HOME="/Users/marvin/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
