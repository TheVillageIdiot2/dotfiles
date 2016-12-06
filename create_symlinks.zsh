#!/bin/zsh

#Update dotifles
.export_dotfiles.zsh

echo "Binding to dotfiles in directory $DOTFILES"

#Create .vim folder in home, link ~/.vimrc to ~/.vim/.vimrc
ln -s "$DOTFILES/vim" -n	        "$HOME/.vim" 
ln -s "$DOTFILES/vim/.vimrc" 	    "$HOME/.vimrc" 

#Link zsh files
ln -s "$DOTFILES/zsh/zprofile" 	    "$HOME/.zprofile"  
ln -s "$DOTFILES/zsh/zshenv" 	    "$HOME/.zshenv"    
ln -s "$DOTFILES/zsh/zshrc" 	    "$HOME/.zshrc"     

#Link xres files
ln -s "$DOTFILES/xres/.xinitrc"      "$HOME/.xinitrc"
ln -s "$DOTFILES/xres/.Xresources"   "$HOME/.Xresources"

#Linke i3config
ln -s "$DOTFILES/i3/config"          "$HOME/.config/i3/config"
