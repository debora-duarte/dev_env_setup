
[ "$1" == "note" ] && setxkbmap us
[ "$1" == "br" ] && setxkbmap br

layout_br=$(setxkbmap -query | grep br)

if [ ! -z "$layout_br" ]; then
  xmodmap -e "keycode 15 mod1 = 6 dead_circumflex"
  xmodmap -e "keycode 47 = dead_tilde"
fi