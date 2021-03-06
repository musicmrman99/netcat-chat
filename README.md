Netcat Chat
====================

Netcat Chat is a basic, hacked-together graphical chat utility.

Installation
--------------------

Use it under [`bashctl`](https://github.com/musicmrman99/bashctl "bashctl on GitHub"):
```
git clone https://github.com/musicmrman99/netcat-chat.git "$BASH_LIB_COMPONENT_ROOT"/ncc
bashctl --update-symlinks
```

Move some files around (you may want to merge them if you've customised these files yourself):
```
rsync -rv "$BASH_LIB_COMPONENT_ROOT"/ncc/.local/ ~/.local/
rsync -rv "$BASH_LIB_COMPONENT_ROOT"/ncc/.ncc/ ~/.ncc/
```

Then add the following to your `.bashrc`:
```sh
src ncc:ncc
```

Usage
--------------------

### The command line form
Start a server on one machine:
```
$ # Syntax:
$ # ncc -l <recv-port> <send-port>
$ ncc -l 4999 4998
```

Start a client to connect to the server on another machine:
```
$ # Syntax:
$ # ncc -c <ip-address> <recv-port> <send-port>
$ ncc -c 192.168.1.2 4998 4999
```

### Using the .desktop shortcuts
1. Start a server on one machine by running the `Netcat Chat - Server` shortcut from the machine's applications menu.
2. Start a client on another machine to connect to the server by running the `Netcat Chat - Client` shortcut form that machine's applications menu.

You can also show and hide all (but not specific) Netcat Chat windows with the `Netcat Chat - Show` and `Netcat Chat - Hide` shortcuts from your applications menu.

Dependencies
--------------------

- bash

- xfce4-terminal
  - Note: You may use any other terminal of your choice, but it will require substantial changes to the repo's contents.

- nc (netcat)
  - Note: These scripts were written for the 'netcat-traditional' ubuntu package, but 'netcat-openbsd' should work too.

- wmctrl
  - Plus any EWMH/NetWM compatible X Window Manager.

- bashctl
  - Source: https://github.com/musicmrman99/bashctl
  - Note: You may use your management system of choice (or built-in bash sourcing), but again, it will require code modifications.
