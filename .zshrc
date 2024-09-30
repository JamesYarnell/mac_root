export PATH=/opt/homebrew/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/usr/local/sbin
export SSL_CERT_FILE="/opt/homebrew/etc/openssl@3/cert.pem"
export REQUESTS_CA_BUNDLE="/opt/homebrew/etc/openssl@3/cert.pem"
export AWS_CA_BUNDLE="/opt/homebrew/etc/openssl@3/cert.pem"
export NODE_EXTRA_CA_CERTS="$HOME/git/SSL-TLS-Configuration/bayer_all.pem"
export PKG_CONFIG_PATH="/opt/homebrew/opt/jpeg/lib/pkgconfig"
source $(brew --prefix nvm)/nvm.sh
# source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias pip='/opt/homebrew/bin/pip3'
alias zsrc='source ~/.zshrc'
alias proxy="source ~/scripts/setproxy.sh"
alias uproxy="source ~/scripts/unsetproxy.sh"
alias vault-ssh='. ~/scripts/vault-ssh.sh'
alias s="s -p google "  # https://github.com/zquestz/s
alias npm_login='npm login --registry=https://artifactory.bayer.com/artifactory/api/npm/npm-platforms-engineering/ --auth-type=web --scope=@monsantoit'
alias aws_login='source ~/scripts/aws_login.sh'
alias aws_logon=aws_login
alias proxy='source ~/scripts/setproxy.sh'
alias uproxy='source ~/scripts/unsetproxy.sh'
#alias startdocker='colima start --memory 8' # use me !!!

#podman - allows download from docker
# podman machine init -v ~/git/SSL-TLS-Configuration:/etc/pki/ca-trust/source/anchors/ -v $HOME:$HOME
# podman machine start
# podman machine ssh sudo update-ca-trust
# alias docker='podman'
# if [[ "$(podman machine ls --format json | jq '.[0].Running')" == "false" ]] ; then podman machine start ; fi

# alias awssso="awssso --mode=gui"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="candy"

# https://github.com/caiogondim/bullet-train.zsh?tab=readme-ov-file
# https://github.com/caiogondim/bullet-train.zsh/blob/master/bullet-train.zsh-theme
# if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
#   eval "$(oh-my-posh init zsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/kushal.omp.json)"
# fi
ZSH_THEME="bullet-train"

parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
BULLETTRAIN_GIT_PROMPT_CMD="\$(parse_git_branch)"
BULLETTRAIN_GIT_BG=red
BULLETTRAIN_GIT_FG=white
BULLETTRAIN_NVM_FG=black
BULLETTRAIN_NVM_PREFIX=""
BULLETTRAIN_PROMPT_ORDER=(
  dir
  git
  aws
  nvm
  time
  cmd_exec_time
)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
