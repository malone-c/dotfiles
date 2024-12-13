#!/bin/bash

#!/bin/bash

# Symlink all files in the dotfiles directory to the home directory

DOTFILES_DIR="$HOME/dotfiles"

for file in "$DOTFILES_DIR"/.*; do
    basename=$(basename "$file")

    case "$basename" in 
	.|..|install_dotfiles.sh|.git) continue ;;
    esac
    
    target="$HOME/$basename"
    
    ln -s "$file" "$target"
    echo "Created symlink for $basename"
done
