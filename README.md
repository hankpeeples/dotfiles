# My personal shell configuration

![Start screen](https://github.com/hankpeeples/ShellConfig/blob/master/assets/startScreen.png)
![Code view](https://github.com/hankpeeples/ShellConfig/blob/master/assets/code.png)

### Installs
1. I use `kitty` terminal on macOS.
2. `zsh`
3. `oh-my-zsh`
4. `Starship` prompt
5. `Neovim`

- Start neovim with 'weak' config by using `nvim -u ~/.config/nvim/initWeak.lua` (I have this aliased to `nvimw`). This starts a much lighter & faster nvim config 

### Getting this config
```
wget https://raw.githubusercontent.com/hankpeeples/ShellConfig/master
```
- Append `/<fileName|folderName>` to grab a specific file or folder.
  
### Zsh help
- Multiple aliases use 3rd party installed packages (installed via `brew`
  - `brew install exa` = fancy colored `ls`
  - `brew install bat` = fancy `cat`
  - `brew install zsh` 
  - `brew install zsh-completions`
  - `brew install neovim`

### Notes
- My `.zshrc` is in my home directory, `~/`
- All other files/folders are located within `~/.config`, they then follow the hierarchy seen here.
