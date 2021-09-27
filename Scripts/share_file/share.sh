#!/usr/bin/env bash
set -euo pipefail
curDir=$(pwd)
printf "file or directory: "
read IsFile
IsFile=$(printf $IsFile | sed 's/[a-z]/\U&/g')
if [[ $IsFile == 'F' ]]
then
    file1=$(cd $HOME && find -type f | sed 's/^\./\/home\/r3dbl4d3/g' |fzf -m --tac --preview="cat {}" --bind="?:toggle-preview")
    printf "Name of zip file: "
    read name
    zip $HOME/Public/Archives/$name.zip $(echo $file1 | xargs)
    curl -T $HOME/Public/Archives/$name.zip https://ppng.io/$name

elif [[ $IsFile == 'D' ]]
then

    folder=$(cd $HOME  && find -type d | sed 's/^\./\/home\/r3dbl4d3/g' |fzf  --tac --preview="tree -l 1 {}" --bind="?:toggle-preview")
    name=$(echo "$folder" | awk -F / '{print $(NF)}')
    tar -czf $HOME/Public/Archives/$name.tar.gz $folder
    curl -T  $name.tar.gz https://ppng.io/$name
fi
