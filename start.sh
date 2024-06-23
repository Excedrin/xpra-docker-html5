#!/usr/bin/env bash
exec xpra start --start=kitty --bind-ws=0.0.0.0:10000 --daemon=no --audio=yes --pulseaudio=yes
