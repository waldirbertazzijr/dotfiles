#!/bin/sh

# Wallpapers...
printf "Copying wallpapers to /home/$USER/.wallpapers..."
cp -r ./wallpapers /home/$USER/.wallpapers
ln -s /home/$USER/.wallpapers /home/$USER/Pictures/Wallpapers

# Fonts...
printf "Copying fonts to /home/$USER/.fonts..."
cp -r ./fonts /home/$USER/.fonts

# New bash_aliases...
if [ ! -f /home/$USER/.bash_aliases ]; then
    printf "bash_aliases not found, copying new one."
    cp ./.bash_aliases /home/$USER/.bash_aliases
fi

# Some customizations...
if [ ! -f /home/$USER/.bash_custom ]; then
    printf "bash_custom not found, copying new one."
    cp ./.bash_custom /home/$USER/.bash_custom
fi

# Loading bash_custom on bashrc
if [ -f /home/$USER/.bashrc ]; then
    printf "\n\nif [ -f ~/.bash_custom ]; then\n\t. ~/.bash_custom\nfi" >> /home/$USER/.bashrc
fi
