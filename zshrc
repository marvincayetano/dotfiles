Last login: Mon May 16 15:41:46 on ttys001
cd ~/Documents/Projects
v%                                                                                                  ~ cd ~/Documents/Projects
~/Documents/Projects vim ~/.zshrc 

























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
