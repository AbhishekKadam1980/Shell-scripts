#!/bin/bash 


return_array(){
	local numbers=(2 3 4)
	echo "${numbers[@]}"
	return 0
}

return_array
echo "The function returns a value of $? as intended"
