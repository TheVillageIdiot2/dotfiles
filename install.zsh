#!/bin/zsh

#Update DOTFILES var
source export_dotfiles.zsh

#Create .zshrc from zhrc and DOTFILES
#Basically, add an export for DOTFILES based on dotfiles

#Create temp file exporting DOTFILES
echo "export DOTFILES=\"$DOTFILES\"" > tmp_f1.txt

#Put at top of .zshrc
cat tmp_f1.txt zsh/zshrc > zsh/.zshrc

#Cleanup
rm tmp_f1.txt


source create_symlinks.zsh

