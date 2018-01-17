# merge my configuration with the systems
xrdb -merge ~/.Xresources

# turn off obnoxious terminal bell
xset b off

# enable a decent compositor
#compton -b

# reset background w/ feh if have done before
if [ -a ~/.fehbg ]; then
	sh ~/.fehbg
fi

# start i3
exec i3
