#!/bin/bash
i3-msg '[workspace=1:] kill; workspace 20; workspace 1:1  ; append_layout /home/micha/.i3/workspace-1.json; exec thunar'
urxvtc -name ranger -e ranger
urxvtc -name neofetch -hold -e bash -i -c "neofetch; bash"
#urxvtc -name neofetch -hold -e bash -c "echo -ne \033]0;Terminal | mplayer\007;neofetch; bash" 
#urxvt -name neofetch -hold -e neofetch
#urxvt -name neofetch -hold -e sh -c "neofetch; bash"

