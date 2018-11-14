# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/lib/node_modules/npm/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/dsar0002/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
# ZSH_THEME="awesomepanda"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# General alias
alias zs="source ~/.zshrc"
alias zshrc="vi ~/.zshrc"
alias gconf="git config --global user.email"
alias gphm="git push heroku master"
alias gpom="git push origin master"
alias gset="git remote set-url"
alias gs="git status"
alias ga="git add"
alias gd="git diff"
alias gadmit="git add . && git commit -m"
alias gc="git commit"
alias rnri="react-native run-ios"
alias gch="git checkout"
alias gchb="git checkout -b "
alias gupdatefork="git fetch usptream && git checkout master && git rebase
upstream/master"
alias gcm="git checkout master"
alias crna="create-react-native-app"
alias cra="create-react-app"
# alias rm=trash
alias fucking=sudo
alias flow="yarn run flow"
alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias glr='gl -n 7'
alias git-clean-merged="git branch --merged master | grep -v 'master$' | xargs git branch -d"
alias git-clean-remote-merged="git branch -r --merged | grep -v master | sed 's/origin\///' | xargs -n 1 git push --delete origin"
alias run="npm run"
alias code="code-insiders"
alias sudomongod="sudo mongod --smallfiles"
alias y="yarn"

# Project specific alias


function mkcdir () {
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

# https://twitter.com/wesbos/status/601426471240998912
function t() {
 tree -I '.git|node_modules|bower_components|.DS_Store' --dirsfirst --filelimit 15 -L ${1:-3} -aC $2
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dsar0002/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/dsar0002/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dsar0002/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/dsar0002/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
