# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# set -x

# Path to your oh-my-zsh installation.
export ZSH="/home/zach/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="steeef"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
plugins=(
        docker
        docker-compose
        git
        golang
        zsh-autosuggestions
#        zsh-syntax-highlighting
)

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

export LC_ALL=POSIX
export LANG=POSIX
export LANGUAGE=POSIX

#export windows_ip=127.0.0.1
#if [[ `uname -r` =~ "WSL2" ]]; then
#        windows_ip=$(ip route | grep default | awk '{print $3}')
#else
#        export DOCKER_HOST=tcp://127.0.0.1:2375
#fi

unsetopt share_history
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan,underline"
#export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=bold,underline"

bindkey '^H' backward-kill-word

export PATH=/snap/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH
export GOPRIVATE=*.ctripcorp.com
export GOPROXY=http://goproxy.release.ctripcorp.com,https://goproxy.cn,direct
export CGO_ENABLED=0

export PATH=/usr/local/protoc/bin:$PATH
export PATH=/usr/local/istio/bin:$PATH
export PATH=/usr/local/kafka/bin:$PATH
export PATH=/usr/local/etcd:$PATH
export PATH=/usr/local/jdk-17.0.1+12/bin:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH=~/.local/share/JetBrains/Toolbox/scripts:$PATH

alias pip=pip3
alias python=python3
alias py=python
#alias sudo='sudo env PATH=$PATH'

# source ~/.zsh_completion
# (echo "
# #\$(yq completion zsh)
#  $(golangci-lint completion zsh)
# $(kubectl completion zsh)
# #\$(kubeadm completion zsh)
# $(kind completion zsh)
# $(kustomize completion zsh)
# $(cmctl completion zsh)
# #\$(kubebuilder completion zsh)
# $(istioctl completion zsh)
# " > ~/.zsh_completion &)

# . <(yq completion zsh)
. <(golangci-lint completion zsh)
. <(kubectl completion zsh)
#. <(kubeadm completion zsh)
#. <(kind completion zsh)
#. <(kustomize completion zsh)
#. <(cmctl completion zsh)
#. <(kubebuilder completion zsh)
#. <(istioctl completion zsh)

# export PATH=/usr/local/node-v12.18.3-linux-x64/bin:$PATH

#export no_proxy=0,1,2,3,4,5,6,7,8,9 # no proxy for ip addr
#alias proxy='export http_proxy="http://127.0.0.1:7890";export https_proxy="http://127.0.0.1:7890";echo -n "Acquire {\n    HTTP::proxy \"http://127.0.0.1:7890\";\n    HTTPS::proxy \"http://127.0.0.1:7890\";\n}\n" >/etc/apt/apt.conf.d/proxy.conf'
#alias noproxy='export http_proxy="";export https_proxy="";echo "" >/etc/apt/apt.conf.d/proxy.conf'

#proxy

#export THEFUCK_HISTORY_LIMIT=5
#eval $(thefuck --alias)

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/usr/local/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/usr/local/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<
#

#source $HOME/.cargo/env

#alias togo1.15='ln -snf /usr/local/go1.15.15 /usr/local/go'
#alias togo1.16='ln -snf /usr/local/go1.16.9 /usr/local/go'
#alias togo1.17='ln -snf /usr/local/go1.17.2 /usr/local/go'

#togo1.17

open() {
        (nautilus ${1-"./"} &)
}

upsearch() {
        local slashes=${PWD//[^\/]/}
        local directory="${PWD}"
        for (( n=${#slashes}; n>0; --n ))
        do
                test -e "${directory}/${1}" && echo "${directory}/${1}" && return
                local directory="${directory}/.."
        done
}

goext() {
        #set -x

        local exedir=${PWD}
        local dst=${1-"../${exedir##*/}.ext"}
        local moddir=$(cd $(dirname $(upsearch go.mod)); pwd)

        cd ${moddir}
        local module=$(head go.mod -n1 |awk '{print $2}')

        for i in $(go list -deps ${exedir} |grep ^${module} |sed "s|${module}/||"); do
        #       echo $i
                mkdir -p ${dst}/${i}; find ./${i} -maxdepth 1 -type f -exec cp "{}" ${dst}/${i} ";"
        done
        cp -a .git go.mod go.sum ${dst}/

        (nautilus ${dst})
        cd ${exedir}
        #set +x
}

goret() {
        if [ -z "$1" ]; then
                echo "err: missing dst dir!"
                return 1
        fi
        rsync -a --exclude=.git --exclude=.idea ./. $1
        cd $1
}


golint() {
#       set -x

        local startdir=${PWD}
        local moddir=$(cd $(dirname $(upsearch go.mod)); pwd)

        cd ${moddir}
        local module=$(head go.mod -n1 |awk '{print $2}')
        local targets=$(go list -deps ${exedir} |grep ^${module} |sed "s|${module}|.|")

        echo ${targets} |xargs |golangci-lint run --tests=false --new-from-rev master -v --disable-all -E cyclop $@
        echo ${targets} |xargs |golangci-lint run --tests=false --new-from-rev master -v -E gofmt -E bodyclose -D deadcode -D varcheck -D unused $@
#       echo ${targets} |xargs |golangci-lint run -v -E cyclop $@

        cd ${startdir}

#       set +x
}

# alias atrust='sudo resolvectl dns enp0s3 198.18.0.1 192.168.102.20 192.168.102.21'
# alias atrust='sudo resolvectl dns enp0s3 192.168.102.20 192.168.102.21'
alias atrust='sudo resolvectl dns eth0 198.18.0.1'


