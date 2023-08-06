# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Turn on Go Modules
export GO111MODULE=on

# Path to your oh-my-zsh installation.
export ZSH="/Users/hankpeeples/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="spaceship"
# source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

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
zstyle ':omz:update' mode auto
zstyle ':completion:*' menu select

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
COMPLETION_WAITING_DOTS="true"

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
plugins=(git zsh-z zsh-syntax-highlighting zsh-autosuggestions 
  colored-man-pages yarn-autocompletions brew zsh-brew-services hanami
  docker 
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
export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs, plugins, and themes.
alias archFlags="arch -x86_64" # Needed for `brew` installs

alias nvim='nvim -u ~/.config/nvim/init.lua'
alias nvimw='nvim -u ~/.config/nvim/initWeak.lua'
alias zshconfig="nvim ~/.zshrc"
alias nvc="nvim ~/.config/nvim" # Open neovim config
alias starshipconfig="nvim ~/.config/starship.toml" # Open starship config
alias alacrittyConfig="nvim ~/.config/alacritty/alacritty.yml"
alias kittyconf="nvim ~/.config/kitty/kitty.conf"

alias untssh="ssh hgp0019@cell03-cse.eng.unt.edu"

alias cdunt="cd ~/Desktop/UNT"
alias cdg="cd ~/go/src/github.com/hankpeeples"
alias cdr="cd ~/Documents/Rust"
alias cdrn="cd ~/Documents/React_Native"

alias l="exa --long --header --git --no-permissions --no-user --all --grid --icons"
alias ll="exa --long --no-user --git --all --icons"

alias refresh="source ~/.zshrc" # Refresh terminal without having to close it.

alias start_psql="/Applications/Postgres.app/Contents/Versions/14/bin/psql -p 5432" # Start postgres server
alias bathelp="bat --plain --language=help" # `bat` is a better `cat`
alias deploy="yarn build && firebase deploy --only hosting:henrypeeples" # For deploying personal website
alias findFile="find / -type f -iname" # Easier command to search system for a file name
alias lg="lazygit" # Open lazygit terminal gui
alias dockerOpen="open /Applications/Docker.app" # start docker desktop from terminal
alias icat="kitty +kitten icat"
alias tree="tree -C -a -I '.git|.github|.yarn|.DS_Store|node_modules'"

help() {
    "$@" --help 2>&1 | bathelp
}

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

fpath+=${ZDOTDIR:-~}/.zsh_functions

export PYENV_ROOT="/opt/homebrew/Cellar/python@3.10/3.10.8/bin"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# pnpm
export PNPM_HOME="/Users/hankpeeples/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

