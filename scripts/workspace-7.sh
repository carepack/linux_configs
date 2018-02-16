#!/bin/bash
i3-msg '[workspace=7:] kill; workspace 20; workspace 7:7  ; append_layout /home/micha/.i3/workspace-7.json; exec "LD_PRELOAD=/usr/lib/libcurl.so.3:/home/micha/scripts/spotifywm/spotifywm.so /usr/share/spotify/spotify"'
urxvtc -name cmus -e bash -c "screen -D -R -S cmus -m cmus; bash"
urxvtc -name cava -e bash -c "\"cava\""

