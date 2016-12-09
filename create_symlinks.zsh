#!/bin/zsh


echo "Binding to dotfiles in directory $DOTFILES"

#TODO: Make the backup process automated

#Create .vim folder in home, link ~/.vimrc to ~/.vim/.vimrc
[[ -d "$HOME/.vim" ]] && mv "$HOME/.vim" "$HOME/.vim.pre_dotfiles"
ln -s "$DOTFILES/vim" -n	        "$HOME/.vim" 
[[ -e "$HOME/.vimrc" ]] && mv "$HOME/.vimrc" "$HOME/.vimrc.pre_dotfiles"
ln -s "$DOTFILES/vim/.vimrc" 	    "$HOME/.vimrc" 

#Link zsh files
[[ -e "$HOME/.zprofile" ]] && mv "$HOME/.profile" "$HOME/.zprofile.pre_dotfiles"
ln -s "$DOTFILES/zsh/zprofile" 	    "$HOME/.zprofile"  
ln -s "$DOTFILES/zsh/zshenv" 	    "$HOME/.zshenv"    
ln -s "$DOTFILES/zsh/.zshrc" 	    "$HOME/.zshrc"     

#Directly copy .xinit stuff
rm "$HOME/.xinitrc"
rm "$HOME/.Xresources"
cp "$DOTFILES/xres/xinitrc"      "$HOME/.xinitrc"
cp "$DOTFILES/xres/Xresources"   "$HOME/.Xresources"

#Linke i3config
ln -s "$DOTFILES/i3/config"          "$HOME/.config/i3/config"
