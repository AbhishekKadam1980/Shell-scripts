#!/bin/bash 
send_array(){
	local fruits=(apple orange banana)
	local prices=(10 20 30)

	echo -ne "old_prices: ${prices[0]}\n\n"
	
	receive_array fruits[@] prices

	echo -ne "new_prices:${prices[0]}\n\n"

	local -a sold_qty

	sold_qty=( $(return_array) )
	(( $? == 0)) && echo "Good" || echo "Error"

	echo "returned array from sold quantities"

	for idx in "${!sold_qty[@]}";do
		printf " sold: %s \n " ${sold_qty[$idx]}
	done	
}


receive_array(){
	#here we receive the fruits array from the first postional parameter
	local friuts={"${!1}"}
	
	local -n price=$2

	echo "In receive array functions"

	for i in $( seq ${#fruits[@]} );do
		printf "item:%s \n" ${fruits[i-1]}
	done

	price[0]=9.99
}


return_array() {
		local quantities=(1 2 3)
		echo ${quantities[@]}
}

main(){
	send_array
}

main "$@"