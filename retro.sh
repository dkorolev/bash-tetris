#!/bin/bash

if ! command -v xdg-open &> /dev/null
then
    echo "xdg-open could not be found, aborting."
    exit 0;
fi

if ! command -v cool-retro-term &> /dev/null
then
    echo "cool-retro-term could not be found, aborting."
    exit 0;
fi

script_dir=`dirname $(readlink -f $0)`

function run_music() {
while :
do
xdg-open "$script_dir/music/tetris-theme.mp3" &> /dev/null;
sleep 85;
done
}

run_music &

cool-retro-term --fullscreen --profile "Monochrome Green" -e "$script_dir/tetris.sh"

kill $!
