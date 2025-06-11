#!/bin/bash

echo "what directory do you want access to?"

select selected_dir in */ "exit"; do  
	
	case $selected_dir in
 	*/)
	
	if [[ -d "$selected_dir" ]] ; then
	cd "$selected_dir" 
	echo "Navigation succesful. View contents below:"
	ls -la
	break
	
	else
	echo "The directory doesn't exist"
	break
fi	
	;;
	 
	"exit")
	echo "goodbye"
	break
	;;
	*)
	 echo "Your attempt to change directory failed" >&2
	continue
esac

	done
