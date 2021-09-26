#!/usr/bin/env bash
set -euo pipefail
file1=$(cd $HOME && find -type f | fzf --prompt="FILE TO ENCRYPT : " --tac --preview="alias cat=cat && clear && cat {}" --bind="?:toggle-preview" | sed 's/\./\/home\/r3dbl4d3/')
file2=$(cd $HOME && find -type f | fzf --prompt="FILE TO HIDE ENCRYPTION: " --tac --preview="alias cat=cat && clear && cat {}" --bind="?:toggle-preview" | sed 's/\./\/home\/r3dbl4d3/')
name=$(echo $file1 | awk -F / '{print $(NF)}')
gpg --output $HOME/DATA_ENC/$name.enc --symmetric --cipher-algo AES256 $file1
sed  -i 's/^/\nENCRYPTION\n/' $HOME/DATA_ENC/$name.enc
cat $HOME/DATA_ENC/$name.enc >> $file2
echo "######################"
echo "### ENCRYPTION DONE ###"
echo "#######################"
