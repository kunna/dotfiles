if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias java='/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java'

alias ls='ls -FG'
alias r='rails'
alias d='docker'
alias dc='docker-compose'
alias av='aws-vault'

export GEM_EDITOR='code'

export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# export GITAWAREPROMPT=~/.bash/git-aware-prompt
# source $GITAWAREPROMPT/main.sh
# export PS1="\n\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\n\u@ \W$ "
# # export PS1="\u@ \h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]$ "


export PATH=/usr/local/sbin:$PATH
export PATH=~/Library/Python/2.7/bin:$PATH

# Kafka
export PATH="$PATH:/Users/kunna/kafka_2.12-2.1.0/bin"

# export EDITOR=/usr/local/bin/code

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# export PATH="/usr/local/opt/openssl/bin:$PATH"

# UJET
UJET_ALIASES="${HOME}/.ujet_bash_aliases"
[[ -e ${UJET_ALIASES} ]] && source ${UJET_ALIASES}

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

export PATH="$HOME/.cargo/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

# Git aware prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%f'
zstyle ':vcs_info:*' enable git
