# OH MY ZSH!
# https://github.com/robbyrussell/oh-my-zsh

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Aliases... MY ALIASES!
source ~/.zsh/zsh_aliases

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fluttershutter"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    git
    brew
    fabric
    npm mvn sbt rebar
    vundle
    scala python
    colored-man osx
    nyan
)

source $ZSH/oh-my-zsh.sh

# `gm`, imported from the git plugin, conflicts with GraphicsMagick
unalias gm

# Awesome globs
setopt extendedglob
setopt dotglob

# No clobber, no beep
unsetopt clobber beep


# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export ANDROID_HOME=/usr/local/opt/android-sdk
export ERL_LIBS=.
export LANG="en_CA.UTF-8"

# Ma editor.
export EDITOR=vim
export VISUAL=vim

