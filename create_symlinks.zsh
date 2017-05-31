#!/bin/zsh


echo "Binding to dotfiles in directory $DOTFILES"

#TODO: Make the backup process automated

#Create .vim folder in home, link ~/.vimrc to ~/.vim/.vimrc
rm "$HOME/.vim"
ln -s "$DOTFILES/vim" -n	        "$HOME/.vim" 

rm "$HOME/.vimrc"
ln -s "$DOTFILES/vim/vimrc" 	    "$HOME/.vimrc" 




#Link zsh files
rm "$HOME/.zprofile"
ln -s "$DOTFILES/zsh/zprofile" 	    "$HOME/.zprofile"  

rm "$HOME/.zshenv"
ln -s "$DOTFILES/zsh/zshenv" 	    "$HOME/.zshenv"    

rm "$HOME/.zshrc"
ln -s "$DOTFILES/zsh/zshrc" 	    "$HOME/.zshrc"     



#Directly copy .xinit stuff
rm "$HOME/.xinitrc"
cp "$DOTFILES/xres/xinitrc"      "$HOME/.xinitrc"

rm "$HOME/.Xresources"
cp "$DOTFILES/xres/Xresources"   "$HOME/.Xresources"



#Link i3config
rm "$HOME/.config/i3/config"
ln -s "$DOTFILES/i3/config"          "$HOME/.config/i3/config"

rm "$HOME/.config/i3status/config"
ln -s "$DOTFILES/i3/config_status"          "$HOME/.config/i3status/config"
