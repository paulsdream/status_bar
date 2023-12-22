#!/bin/sh
dwm_vpnip(){

	interface="$(ip tuntap show | cut -d : -f1 | head -n 1)"
	ip="$(ip a s "${interface}" 2>/dev/null \
        	| grep -o -P '(?<=inet )[0-9]{1,3}(\.[0-9]{1,3}){3}')"

	if [ "${ip}" != "" ]; then
	  printf "%s" "$SEP1"
	  printf "VPN IP: ${ip}"
	else
	  printf "%s\n" "$SEP2"
	fi
}
