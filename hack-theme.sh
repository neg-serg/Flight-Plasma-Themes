#!/usr/bin/env zsh

fgwhite="#b8c5d9"
blackwidget="#000000"
mainbg="#020404"
highlight="#005faf"

for target in ./Flight-Dark-GTK/gtk-3.0/gtk.css ./Flight-Dark-GTK/gtk-4.0/gtk.css; do
    sed -i "s/#fcfcfc/$fgwhite/g" "$target" # widget text/foreground color
    sed -i "s/#2a2e32/$blackwidget/g" "$target" # text color for entries, views and content in general
    sed -i "s/#2a2e32/$mainbg/g" "$target" # widget base background color
    sed -i "s/#3daee9/$highlight/g" "$target" # hover
done
