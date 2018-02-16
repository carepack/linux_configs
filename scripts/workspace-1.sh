#!/bin/bash
i3-msg '[workspace=1:] kill; workspace 20; workspace 1:1  ; append_layout /home/micha/.i3/workspace-1.json; exec thunar'
urxvtc -name ranger -e ranger
urxvtc -name neofetch -hold -e bash -i -c "neofetch; bash"
