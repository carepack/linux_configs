#!/bin/bash
i3-msg 'workspace 20; [workspace=3:] kill; workspace 3:3  ; append_layout /home/micha/.i3/workspace-3.json; exec vivaldi-stable'

