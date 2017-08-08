function ncc {
	XDG_CONFIG_HOME="$HOME/.ncc/.config" xfce4-terminal --disable-server --geometry='40x30' --title='Netcat Chat Client' --icon="$HOME/.local/share/icons/ncc.png" --command="nc $*" & disown
	sleep 0.5
	wmctrl -F -r 'Netcat Chat Client' -b add,skip_taskbar,skip_pager
}
