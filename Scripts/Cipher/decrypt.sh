#!/usr/bin/env bash
set -euo pipefail


printf "Is Encryption hidden : "
read is_hidden
is_hidden=${is_hidden^^}
if [[ "$is_hidden" == "Y" ]]
then
    file1=$( cd $HOME && find -type f | fzf --tac --prompt="NAME OF ENCRYPTION FILE: " --preview="alias cat=cat && clear && cat {}" --bind="?:toggle-preview" | sed 's/^\./\/home\/r3dbl4d3/g' )
    printf "Name of Output file: "
    read output_file
    sed -ne ' /ENCRYPTION/,$ p ' $file1 | sed '/ENCRYPTION/d' > $HOME/DATA_ENC/$output_file.enc 
    gpg --output $HOME/DATA_ENC/$output_file --decrypt $HOME/DATA_ENC/$output_file.enc
elif [[ $is_hidden == "N" ]]
then
    file1=$( cd $HOME && find -type f | fzf --tac --prompt="NAME OF ENCRYPTION FILE: " --preview="alias cat=cat && clear && cat {}" --bind="?:toggle-preview" | sed 's/^\./\/home\/r3dbl4d3/g' )
    printf "Name of Output file: "
    read output_file
    gpg --output $HOME/DATA_ENC/$output_file --decrypt $file1

elif [[ -z $is_hidden ]]
then
    file1=$( cd $HOME && find -type f | fzf --tac --prompt="NAME OF ENCRYPTION FILE: " --preview="alias cat=cat && clear && cat {}" --bind="?:toggle-preview" | sed 's/^\./\/home\/r3dbl4d3/g' )
    printf "Name of Output file: "
    read output_file
    sed -ne ' /ENCRYPTION/,$ p ' $file1 >> $HOME/DATA_ENC/$output_file.enc
    gpg --output $HOME/DATA_ENC/$output_file --decrypt $HOME/DATA_ENC/$output_file.enc
else
    echo "PLEASE ANSWER IN Y/n"
    exit
fi
echo "########################"
echo "### DECRYPTION DONE ###"
echo "########################"
