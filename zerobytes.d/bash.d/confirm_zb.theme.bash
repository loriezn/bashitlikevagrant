#!/bin/bash
function confirm() {
	[ 1 != "$(gp)" ] && \
		return 1

	local prompt="$1"
	local choices="y/n"

	[ $# = 0 ] && \
		prompt="Do you want to proceed?"

	[[ -n "$prompt" && ! -n "$choices" ]] && \
		prompt="$prompt ($choices) "

	[ -z "$choices" ] && \
		choices="yes or nn"

    local input
    while true; do
        read -p "$prompt" input
        case "$input" in 

			y|Y|[yY][eE][sS] )
				return
				break
				;;

			n|N|[nN][oO] ) 
				echo "Cancelled"
				return 1
				break
				;;

			* )
				echo "Invalid response. Enter $choices"
				;;
        esac
    done
}

