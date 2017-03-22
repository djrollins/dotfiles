# merge my configuration with the systems
xrdb -merge ~/.Xresources

# turn off obnoxious terminal bell
xset b off

# enable a decent compositor
compton -b

# start i3
exec i3
