#!/usr/bin/env zsh

base_color_bg="#010912"
base_color_fg="#005f87"
blackwidget="#000000"
unfocused_bg="#191b1d"
border_color="#0a3749"
fgwhite="#b8c5d9"
fgwhite_alter="rgba(184, 97, 217"
highlight="#005faf"
hover_alter="rgba(0, 95, 175"
mainbg="#020404"
border_radius="0"

for target in ./Flight-Dark-GTK/gtk-3.0/gtk.css ./Flight-Dark-GTK/gtk-4.0/gtk.css; do
    sed -i "s/#fcfcfc/$fgwhite/g" "$target" # widget text/foreground color
    sed -i "s/#2a2e32/$mainbg/g" "$target" # widget base background color
    sed -i "s/#191b1d/$blackwidget/g" "$target" # widget base unfocused_bg background color
    sed -i "s/#3daee9/$highlight/g" "$target" # hover
    sed -i "s/rgba(37, 164, 230/$hover_alter/g" "$target" # different hover
    sed -i "s/border-radius: 0.75mm/$border_radius/g" "$target" # border radius
    sed -i "s/#5f6265/$border_color/g" "$target" # border color
    sed -i "s/#1b1e20/$base_color_bg/g" "$target" # base color background
    sed -i "s/#262a2d/$base_color_fg/g" "$target" # base color foreground
done

rm -rf ~/.local/share/themes/Flight-Dark-GTK && cp -r ./Flight-Dark-GTK ~/.local/share/themes/Flight-Dark-GTK
false && git checkout Flight-Dark-GTK
