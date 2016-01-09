# Enable antigen
source /usr/share/zsh/scripts/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle vi-mode
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme ~/.zsh/themes/ reed
antigen apply

# Add user defined functions to the path
fpath=($HOME/.zsh/functions $fpath )

# Set ZSH to vim mode
bindkey -v

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

# Path var
export PATH=$PATH:$HOME/.cabal/bin

# Aliases
alias l="ls -lh"
alias ll="ls -lah"
alias mount_efi="sudo mount /dev/sda1 /mnt; cd /mnt"
alias pacman="sudo pacman --color always"
alias tarx="tar -xvf"
alias chrome="google-chrome-stable --force-device-scale-factor=1"
alias steam="STEAM_RUNTIME=1 steam"
alias mopidy-reload="systemctl --user restart mopidy.service"
alias num-updates="yaourt -Sya && yaourt -Qqau"

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
