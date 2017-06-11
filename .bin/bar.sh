#! /bin/bash

Clock() {
	DATETIME=$(date "+%T %a %b %d")
	echo -n "$DATETIME"
}

Battery() {
	BATPERC=$(acpi --battery | cut -d, -f2)
	echo "$BATPERC"
}

Workspaces() {
	WS=$(~/.bin/ws.sh)
	echo "$WS"
}



while true; do 
	echo "%{B#33000000}%{l}$(Workspaces)%{c}$(Clock)%{r}$(Battery)"
	sleep 1
done


