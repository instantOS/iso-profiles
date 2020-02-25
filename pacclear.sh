#!/usr/bin/expect

spawn pacman -Scc
sleep 2
send -- "j\r"
sleep 2
send -- "j\r"
