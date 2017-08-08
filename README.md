Netcat Chat
====================

Netcat Chat is a basic, hacked-together graphical chat utility.

Usage
--------------------

### The command line form
Start a server on one machine:
$ ncc -l 4999

Start a client to connect to the server on another machine:
$ ncc <ip-address> 4999

### Using the .desktop shortcuts
1. Start a server on one machine by running the 'Netcat Chat - Server' shortcut from the machine's applications menu.
2. Start a client on another machine to connect to the server by running the 'Netcat Chat - Client' shortcut form that machine's applications menu.

Dependencies
--------------------

- bash

- xfce4-terminal
  - Note: You may use any other terminal of your choice, but it will require substantial changes to the repo's contents.

- nc
  - Note: These scripts were written for the 'netcat-traditional' ubuntu package, but 'netcat-openbsd' should work too.

- wmctrl
  - Plus any EWMH/NetWM compatible X Window Manager

- bashctl
  - Source: https://github.com/musicmrman99/bashctl
  - Note: You may use your management system of choice (or built-in bash sourcing), but again, it will require code modifications.

