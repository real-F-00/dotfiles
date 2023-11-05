
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/f-00/.zshrc'

#PROMPT
autoload -Uz promptinit && promptinit
prompt_myprompt_setup() {
PS1="%n@%F{cyan}%m%f %~ $ "
}
prompt_themes+=( myprompt )

prompt myprompt
autoload -Uz compinit
compinit
# End of lines added by compinstall

# aliases
alias sudo='doas'
alias cls='clear'
alias config='/usr/bin/git --git-dir=/home/f-00/dotfiles/ --work-tree=/home/f-00'
