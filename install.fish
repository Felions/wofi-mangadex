#!/bin/fish

git clone git@github.com:Felions/wofi-mangadex.git ~/

chmod u+x ~/wofi-mangadex/wofi-mangadex
ln ~/wofi-mangadex/wofi-mangadex ~/.local/bin/

mkdir -p ~/.mangadex/.data
echo "set -g reader gwenview" > ~/.mangadex/.data/settings.fish
echo "set -g lang 'en'" >> ~/.mangadex/.data/settings.fish
echo "#quality data/data-saver -> high/low" >> ~/.mangadex/.data/settings.fish
echo "set -g quality 'data'" >> ~/.mangadex/.data/settings.fish
echo "#content ratings save, suggestive, erotica, pornoghaphic" >> ~/.mangadex/.data/settings.fish
echo "set -g contentRating 'safe suggestive erotica pornographic'" >> ~/.mangadex/.data/settings.fish
echo "#wofi css file location" >> ~/.mangadex/.data/settings.fish
echo "set -g config ~/.config/wofi/wofi_styles.css" >> ~/.mangadex/.data/settings.fish
