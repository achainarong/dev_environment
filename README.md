# dev_environment


This setup is for my own private mac

```shell

  # Install some needed dependencies
  sh dependencies/brew_apps.sh
  sh dependencies/brew_install.sh
  sh dependencies/vim_vundle_install.sh

  # Bash
  cp -R dot_env/ ~

  # Configurate Vim
  cd ~/.vim/bundle/coc.nvim && yarn install && cd
  vim -c "PluginInstall" -c "CocInstall" -c "qa"

```
