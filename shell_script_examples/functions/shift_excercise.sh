corp_backup(){
	echo "backing up to corporate datacenter"
	for f in "$@"; do
		echo "$f"
	done
}
echo 
my_backup(){
	echo "backing up to second hdd"
	for f in "$@"; do
		echo "$f"
	done
}
echo
backup(){
	
	local cmd=$1;
	
	shift
	
	case $cmd in
		longterm)
			echo corp_backup "$@"
			;;
		localtmp)
			echo my_backup "$@"
			;;
		*)
			echo "unknown backup"
			;;
	esac
}
