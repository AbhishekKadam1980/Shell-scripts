#!/bin/bash 

declare -A options
options[ARG_A]=0

show_options(){
	(( $# < 1)) && {
		echo "Main menu"
	        echo "a) select option to enable a service"
		echo "b) <data dependent service>"
		exit 1
	}
}

parse_options(){
	while getopts :ab: opt
	do
		case $opt in
			a)
				options[ARG_A]=1
				echo "options[ARG_A] is set to 1"
				;;
			b)
				options[ARG_B]= $OPTARG
				echo "options[ARG_B] is set to ${options[ARG_B]} "
				;;
			
			?) 	
				echo "$optarg is not valid"
				exit 1
				;;
		esac
	done
}

enable_feature(){
	echo "feature enabled"
}

corp_backup(){
	echo "corporate backup"
}

local_backup(){
	echo "local backup"
}

run(){
	(( ${options[ARG_A]==1} )) &&{
		enable_feature
}

        case  ${options[ARG_B]} in
		corp_backup)
			corp_backup
			;;
		local_backup)
			local_backup
			;;
	esac

	while : ; do
		sleep 120
	done
}

exit_confirmed=0

clean_up(){
	((exit_confirmed == 0)) &&{
		exit_confirmed=1
		echo "press cntrl+c to exit"
		return 0 
	}
	exit 1
}

register_signal_handlers(){
	trap clean_up INT TERM
}


main(){
	show_options "$@"
	parse_options "$@"
	register_signal_handlers
	run 
}


main "$@"

