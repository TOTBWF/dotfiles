# Path to oh-my-zsh
export ZSH=/home/reed/.oh-my-zsh/

# Zsh Theme name
ZSH_THEME="reed"

# Enable oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Add user defined functions to the path
fpath=($HOME/.zsh/functions $fpath )

# Set ZSH to vim mode
bindkey -v

# Print ZLE status to RPROMPT
# The Actual Printing is handled in the zsh theme
export VIM_MODE="[INSERT]"

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

# Set escape delay to 10ms
export KEYTIMEOUT=1

# Ctrl-z toggles sending process to bg
_zsh_cli_fg() { fg 1> /dev/null  2>&1; }
zle -N _zsh_cli_fg
bindkey '^Z' _zsh_cli_fg

# Editor Settings
export EDITOR=/bin/vim
export VISUAL=/bin/vim

# language settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Plugins to be loaded
plugins=(git)

# Aliases
alias l="ls -lh"
alias ll="ls -lah"
alias mount_efi="sudo mount /dev/sda1 /mnt; cd /mnt"
alias pacman="sudo pacman --color always"
alias tarx="tar -xvf"
# Steam Stuff
export STEAM_HOME=/home/reed/.steam/steam/steamapps/common/
export KSP_MODS=/home/reed/.steam/steam/steamapps/common/Kerbal\ Space\ Program/KSP_MODS/
# Wine Stuff
export WINEPREFIX=/home/reed/.PlayOnLinux/wineprefix/Steam
export WINEARCH=win32
export WINEDEBUG=-all
export __GL_THREADED_OPTIMIZATIONS=0
export __GL_SYNC_TO_VBLANK=1
export __GL_YIELD="NOTHING"
export CSMT=enabled

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

