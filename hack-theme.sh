#!/usr/bin/env zsh

fgwhite="#b8c5d9"
blackwidget="#000000"
mainbg="#020404"
highlight="#005faf"
hover_alter="rgba(0, 95, 175"
border_color=""

border_radius="0"

for target in ./Flight-Dark-GTK/gtk-3.0/gtk.css ./Flight-Dark-GTK/gtk-4.0/gtk.css; do
    sed -i "s/#fcfcfc/$fgwhite/g" "$target" # widget text/foreground color
    sed -i "s/#2a2e32/$blackwidget/g" "$target" # text color for entries, views and content in general
    sed -i "s/#2a2e32/$mainbg/g" "$target" # widget base background color
    sed -i "s/#3daee9/$highlight/g" "$target" # hover
    sed -i "s/rgba(37, 164, 230/$hover_alter/g" "$target" # different hover
    sed -i "s/border-radius: 0.75mm/$border_radius/g" "$target" # border radius
    sed -i "s/#5f6265/#ff0000/g" "$target" # border color
    
done

rm -rf ~/.local/share/themes/Flight-Dark-GTK && cp -r ./Flight-Dark-GTK ~/.local/share/themes/Flight-Dark-GTK
false && git checkout Flight-Dark-GTK
