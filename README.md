---
# Mint dotfiles (and default packages)

This repo contains my personal dotfiles, used in Mint with Cinnamon.

- Ansible must 'become' to install packages, so run something as sudo before execute "start.sh" to omit password input

- To help understand what files you need to store, watch your home:
  - notifywait -m -e MODIFY -r $HOME
