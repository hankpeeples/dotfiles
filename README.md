# My personal shell configuration

### Installs
1. I use `iTerm2` on macOS. **Note:** If you are experiencing high iTerm2 memory usage, try turning off gpu rendering. In my case, this can consistently reduce memory usage by ~150MB or more.
2. `zsh`
3. `oh-my-zsh`
4. `Starship` prompt
5. `Neovim` + `Lunarvim`
6. Maybe more...?

### Getting this config
```
wget https://raw.githubusercontent.com/hankpeeples/ShellConfig/master
```
- Append `/<fileName|folderName>` to grab a specific file or folder.

### Nvim help
- I am using `lua` files for my nvim configuration.
  - Package manager is `packer`
  
### Zsh help
- Multiple aliases use 3rd party installed packages (installed via `brew`
  - `brew install exa` = fancy colored `ls`
  - `brew install bat` = fancy `cat`
  - `brew install zsh` 
  - `brew install zsh-completions`
  - `brew install neovim`

### Notes
- My `.zshrc` is located in my home directory, `~/`
- All other files/folders are located within `~/.config`, they then follow the hierarchy seen here.
