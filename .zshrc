export ZSH=/usr/share/oh-my-zsh/
export DISABLE_AUTO_UPDATE="true"
export ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
mkdir $ZSH_CACHE_DIR
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

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
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(git archlinux adb bower colorize common-aliases cp docker-compose docker github gitignore gpg-agent gradle nmap npm pylint python rsync safe-paste sublime sudo systemd thefuck)

# User configuration

export PATH="/bin:/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/opt/android-sdk/emulator:/opt/android-sdk/platform-tools:/opt/android-sdk/tools/bin:/home/nop-90/.gem/ruby/2.4.0/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
. /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
source /usr/share/oh-my-zsh/themes/blinks.zsh-theme
# You may need to manually set your language environment
export LANG=fr_FR.UTF-8
export TERM=terminator
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-march=skylake -pipe -O2"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# personal vars
#export VDPAU_DRIVER=va_gl
export QT_STYLE_OVERRIDE=adwaita
export LIBVA_DRIVER_NAME=i965
export CFLAGS="-march=skylake -pipe -O2"
export XDG_RUNTIME_DIR=/var/run/user/1000
export CXXFLAGS=$CFLAGS
export XKB_DEFAULT_LAYOUT=fr
export XKB_DEFAULT_MODEL=pc105
export CUCKOO=~/Documents/security/malwares/cuckoo
export WINEPREFIX=/home/nop-90/.wine
#export WLC_DRM_DEVICE=card0

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ssh-rasp="ssh alarm@rasp"
alias ssh-node="ssh admin@node"
alias ssh-ad="ssh admin@ad"
alias rtlsdr_scanner="python2 -m rtlsdr_scanner"
alias music-node="ncmpcpp -h 192.168.1.5"
alias firewall="tail -n15 /var/log/nftables"
alias wifi="nmcli dev wifi list"
alias pushall="git remote | xargs -L1 git push --all"
alias log="tail -n 15 /var/log/messages" 
alias nemo="nemo --no-desktop"
alias radioclassique="vlc /home/nop-90/Bureau/RadioClassique.xspf"
alias configi3="nvim /home/nop-90/.config/i3/config"
alias androids="ANDROID_EMULATOR_USE_SYSTEM_LIBS=1 android-studio"
alias watch="watch --color"
