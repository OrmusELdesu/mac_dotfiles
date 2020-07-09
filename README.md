# Mac OS 64-bit Dotfiles

This repository contains my important configuration files for my darwin machines running the Z-shell.

## macports
- before cloning this repo [macports](https://www.macports.org) must be installed.
- my preferred way is the build it from source and manually upgrade and update.
- do a `sudo port -v selfupdate` and `sudo port upgrade outdated`

## iterm2
- for iTerm2 with xterm-256 colours UI, you need to set its custom shell to `/opt/local/bin/zsh` forcing it to use the macports version of zsh.
- shell integration is not needed however, it can still be enabled, here are the [instructions](https://www.iterm2.com/documentation-shell-integration.html)
- if shell integration is needed this command needs to be appended at the end of your `.zshrc` 
- `[[ -f $HOME/.config/zsh/.iterm2_shell_integration.zsh ]] && source $HOME/.config/zsh/.iterm2_shell_integration.zsh`

## vim-plug
- to autoload my plugin manager with the central folder in `~/.config/vim/` the file `plug.vim` needs to be place in `/opt/local/share/vim/autoload/`
- `cp plug.vim /opt/local/share/vim/autoload`
- uncomment the plug functions from your vimrc, and restart vim 
- then do a `:PlugInstall` to install all plugins in the `plugged` directory

## git-completion
- download the latest `git-completion.zsh` script from the [git repo](https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh)
- the zsh completion for git is dependent on `git-completion.bash` so it also must be downloaded from the [git repo](https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash)
- place this two files on `~/.config/git/` and create one symbolic link by the name of `_git` within `/opt/local/share/zsh/site-functions/`
- `ln -s git-completion.zsh /opt/local/share/zsh/site-functions/_git`

## unix pass
- download the unix-pass zsh completion script from [zx2c4's repo](https://git.zx2c4.com/password-store/plain/src/completion/pass.zsh-completion)
- since this zsh completion script doesn't need extra configuration and can be directly installed in the `/opt/local/share/zsh/site-functions/` directory under the name of `_pass`
- `mv pass.zsh-completion /opt/local/share/zsh/site-completion/_pass`
