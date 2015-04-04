autoload -Uz add-zsh-hook
autoload -Uz colors; colors
autoload -Uz vcs_info

setopt prompt_subst
export LSCOLORS=gxfxcxdxbxegedabagacad
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
EDITOR='vim'
PROMPT=$'%#%{\e[m%}%'"{%} "

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats '(%b)'
zstyle ':vcs_info:*' actionformats '(%b|%a)'

function _update_vcs_info_msg() {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
add-zsh-hook precmd _update_vcs_info_msg

RPROMPT="%F{yellow}[%~]%1(v|%F{green}%1v%f|)%F{yellow}%{${reset_color}%}"

fpath=(/usr/local/share/zsh-completions $fpath)
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:git:*' source /usr/local/share/zsh/site-functions/_git
## Completion configuration
autoload -Uz compinit
compinit

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

HISTFILE=~/.zsh_history
HISTSIZE=10000000
SAVEHIST=10000000

setopt hist_ignore_dups
setopt share_history

