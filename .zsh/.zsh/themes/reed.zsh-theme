# Setup the intial mode
VIM_MODE="[INSERT]"

# Swap between modes
precmd() {
  VIM_MODE="[INSERT]"
}
zle-keymap-select() {
  VIM_MODE="[INSERT]"
  [[ $KEYMAP = vicmd ]] && VIM_MODE="[NORMAL]"
  () { return $__prompt_status }
  zle reset-prompt
}

zle-line-init() {
  typeset -g __prompt_status="$?"
}
zle -N zle-keymap-select
zle -N zle-line-init

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{fg[red]%}%? %{reset_color%})"

eval darkGray='$FG[237]'
eval gray='$FG[008]'
eval lightGray='$FG[015]'
eval orange='$FG[009]'

# Primary Prompt
PROMPT='$darkGray------------------------------------------------------------%{$reset_color%}
$gray%~\
$(git_prompt_info) \
$FG[015]%(!.#.)>%{$reset_color%} '
PROMPT2='$lightGray\ %{$reset_color%}'
RPS1='{$return_code}'

if type "virtualenv_prompt_info" > /dev/null
then
	RPROMPT='$lightGray$VIM_MODE%{$reset_color%} $(virtualenv_prompt_info)$darkGray%n@%m%{$reset_color%}%'
else
	RPROMPT='$lightGray$VIM_MODE%{$reset_color%} $darkGray%n@%m%{$reset_color%}%'
fi

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$lightGray (branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$lightGray)%{$reset_color%}"
