function ncc {
	case "$1" in
		'-l')
			# ncc -l <in-port> <out-port>
			XDG_CONFIG_HOME="$HOME/.ncc/.config" xfce4-terminal --disable-server --geometry='40x30' --icon="$HOME/.local/share/icons/ncc.png" --title='Netcat Chat Server (input)' --command="nc -l '$2'" & disown
			XDG_CONFIG_HOME="$HOME/.ncc/.config" xfce4-terminal --disable-server --geometry='40x30' --icon="$HOME/.local/share/icons/ncc.png" --title='Netcat Chat Server (output)' --command="nc -l '$3'" & disown

			sleep 0.5
			wmctrl -F -r 'Netcat Chat Server (input)' -b add,skip_taskbar,skip_pager
			wmctrl -F -r 'Netcat Chat Server (output)' -b add,skip_taskbar,skip_pager
			;;

		'-c')
			# ncc -c <connect-address> <in-port> <out-port>
			XDG_CONFIG_HOME="$HOME/.ncc/.config" xfce4-terminal --disable-server --geometry='40x30' --icon="$HOME/.local/share/icons/ncc.png" --title='Netcat Chat Client (input)' --command="nc '$2' '$3'" & disown
			XDG_CONFIG_HOME="$HOME/.ncc/.config" xfce4-terminal --disable-server --geometry='40x30' --icon="$HOME/.local/share/icons/ncc.png" --title='Netcat Chat Client (output)' --command="nc '$2' '$4'" & disown

			sleep 0.5
			wmctrl -F -r 'Netcat Chat Server (input)' -b add,skip_taskbar,skip_pager
			wmctrl -F -r 'Netcat Chat Server (output)' -b add,skip_taskbar,skip_pager
			;;

		*)
			printf '%s\n' "Error: command option not recognised: '$1'" "Info: Must be '-l' or '-c'"
			return 1
	esac
	return 0
}
