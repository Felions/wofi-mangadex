#!/bin/fish
source ~/.mangadex/.data/settings.fish

set chapter_id $argv[1]
set title $argv[2]
set chapter $argv[3]


set querry (curl -s "https://api.mangadex.org/at-home/server/$chapter_id")
        
set baseURL (echo $querry | jq -r ".baseUrl")
set hash (echo $querry | jq -r ".chapter.hash")
set img (echo $querry | jq -r ".chapter.data[]")


echo -e "\n\nhere\n\n"
echo -e "$argv\n\n"

mkdir -p "$HOME/.mangadex/$title/$chapter"

for i in (seq (count $img))
    wget -O "$HOME/.mangadex/$title/$chapter/$i" "$baseURL/$quality/$hash/$img[$i]"
end
