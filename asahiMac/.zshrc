export PATH=$HOME/bin:$HOME/.cargo/bin:/usr/bin:/usr/local/bin:/sbin:$PATH

export XDG_CONFIG_HOME="$HOME/.config/"

# Turn on Go Modules
export GO111MODULE=on

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export MYVIMRC="$HOME/.config/nvim"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode auto
zstyle ':completion:*' menu select

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-256color zsh-completions zsh-autosuggestions zsh-syntax-highlighting
  colored-man-pages docker 
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
#alias archFlags="arch -x86_64" # Needed for `brew` installs

alias nvim='nvim -u ~/.config/nvim/init.lua'
alias nvimw='nvim -u ~/.config/nvim/initWeak.lua'
alias zshconfig="nvim ~/.zshrc"
alias nvc="nvim ~/.config/nvim" # Open neovim config
alias starshipconfig="nvim ~/.config/starship.toml" # Open starship config
alias alacrittyConfig="nvim ~/.config/alacritty/alacritty.yml"
alias kittyconf="nvim ~/.config/kitty/kitty.conf"
alias hyprconfig="nvim ~/.config/hypr"

alias untssh="ssh hgp0019@cell03-cse.eng.unt.edu"

alias cdunt="cd ~/Desktop/UNT"
alias cdg="cd ~/go/src/github.com/hankpeeples"
alias cdr="cd ~/Documents/Rust"
alias cdrn="cd ~/Documents/React_Native"
alias cdts="cd ~/Documents/React/TS"

alias l="eza --long --header --git --no-permissions --no-user --all --grid --icons"
alias ll="eza --long --no-user --git --all --icons"

alias refresh="source ~/.zshrc" # Refresh terminal without having to close it.

alias bathelp="bat --plain --language=help" # `bat` is a better `cat`
alias deploy="yarn build && firebase deploy --only hosting:henrypeeples" # For deploying personal website
alias findFile="find / -type f -iname" # Easier command to search system for a file name
alias lg="lazygit" # Open lazygit terminal gui
alias icat="kitty +kitten icat"
alias tree="tree -C -a -I '.git|.github|.yarn|.DS_Store|node_modules'"

eval "$(starship init zsh)"

fpath+=${ZDOTDIR:-~}/.zsh_functions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

export NVM_DIR="$HOME/.config//nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
