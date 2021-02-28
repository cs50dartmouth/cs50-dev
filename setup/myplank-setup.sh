#!/bin/bash

# Only run this on plank.thayer.dartmouth.edu
#
if [ ! "$HOSTNAME"  == plank ] ; then
  echo "You must run this on plank.thayer.dartmouth.edu only!";
fi
#
echo "Installing dot files..."
dotdir=~/cs50-dev/dotfiles/plank
for dot in $dotdir/*; do
    dotfile=.${dot##*/}
    dotpath=~/$dotfile
    # don't overwrite !
    if [ -f $dotpath ] ; then
      echo "File $dotpath already exists -- skipping"
    else
      echo "Copying: $dot To: $dotpath"
      cp $dot $dotpath
    fi
done

# Ignore global git ignore
git config --global core.excludesfile ~/.gitignore_global

# Source our new bashrc
source ~/.bashrc

echo ""
echo "myplank-setup complete!"
