---
# Mint dotfiles (and default packages)

This repo contains my personal dotfiles, used in Mint with Cinnamon.

- Ansible must 'become' to install packages, so run something as sudo before execute "start.sh" to omit password input

- To help understand what files you need to store, watch your home:
  - notifywait -m -e MODIFY -r $HOME

## Pending

- Add Cedilla key on tapping '+c, '+C
  - https://superuser.com/questions/1075992/cedilla-under-c-%c3%a7-in-us-international-with-dead-keys-keyboard-layout-in-linu
how to: 
1. Edit configuration files:

sudo vim /usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/immodules.cache

sudo vim /usr/lib/x86_64-linux-gnu/gtk-2.0/2.10.0/immodules.cache
On both, find the lines starting with "cedilla" "Cedilla" and add :en to the line. Something like this:

"cedilla" "Cedilla" "gtk30" "/usr/share/locale" "az:ca:co:fr:gv:oc:pt:sq:tr:wa:en"

2. Change the Compose file:

sudo sed -i /usr/share/X11/locale/en_US.UTF-8/Compose -e 's/ć/ç/g' -e 's/Ć/Ç/g'
3. Instruct the system to load the cedilla module:

Add those lines to /etc/environment:

GTK_IM_MODULE=cedilla
QT_IM_MODULE=cedilla
Reboot and you are done.
