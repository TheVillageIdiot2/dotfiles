#!/bin/bash

#Get directory of script
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done

DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

echo "Binding to dotfiles in directory $DIR"

#Create .vim folder in home, link ~/.vimrc to ~/.vim/.vimrc
ln -s "$DIR/vim" 		        "$HOME/.vim" 
ln -s "$DIR/vim/.vimrc" 	    "$HOME/.vimrc" 

#Link zsh files
ln -s "$DIR/zsh/.zprofile" 	    "$HOME/.zprofile"  
ln -s "$DIR/zsh/.zshenv" 	    "$HOME/.zshenv"    
ln -s "$DIR/zsh/.zshrc" 	    "$HOME/.zshrc"     

#Link xres files
ln -s "$DIR/xres/.xinitrc"      "$HOME/.xinitrc"
ln -s "$DIR/xres/.Xresources"   "$HOME/.Xresources"

#Linke i3config
ln -s "$DIR/i3/config"          "$HOME/.config/i3/config"
