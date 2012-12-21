#Config Files on Linux

##bashrc
profile of bash.

##gitconfig
git configuration file.

##tmuxconfig
configuration file for tmux.

##vimrc
Inspired by [spf13-vim](https://github.com/spf13/spf13-vim),
this is my customized vimrc.local file.

##zsh
zsh config files

1. install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh.git)

2. add custom theme

    ```bash
    $ cd ~/.oh-my-zsh/themes
    $ ln -s ~/workspace/config-files/chouqin.zsh-theme chouqin.zsh-theme
    ```

3. add custom zsh config

    ```bash
    $ cd ~/.oh-my-zsh/custom
    $ ln -s ~/workspace/config-files/aliases.zsh aliases.zsh
    $ ln -s ~/workspace/config-files/env.zsh env.zsh
    ```
4. add .zshrc
    
    ```bash
    $ ln -s ~/workspace/config-files/.zshrc ~/.zshrc
    ```
