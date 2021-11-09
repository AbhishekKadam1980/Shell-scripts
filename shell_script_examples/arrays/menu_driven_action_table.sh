

show_title(){
	echo -ne "\n\t\tgit-check-in-menu\n\n"
}

change_prompt(){
	PS3="Main select: "
}

change_local_git_repo(){
	go_to_repo_1(){
		cd $CODEPATH/repo1 
		echo "INSIDE REPO 1"
	}

	go_to_repo_2(){
		cd $CODEPATH/repo2 
		echo"INSIDE REPO 2"
	}

	run(){
		echo -ne "\n\n........\n local git repo menu \n"
		local -r menu=("repo1" "repo2")
		declare -ra acts=(go_to_repo_1 go_to_repo_2)
		local choice 

		select choice in "${menu[@]}";do
			${acts[$(( REPLY - 1 ))]}
			break
		done
		echo -ne "............\n"
	}
	local old_ps3=PS3

	PS3="Repo select: "

	PS3=$old_ps3
}

git_checkout_new_branch(){
	echo "new branch checked out at $PWD"
}

git_commit_changes(){
	echo"committing changes in $PWD"
}

git_push_to_repo(){
	echo "pushing to repo in $PWD"
}

quit(){
	echo "BYE"
	break
}


run(){
	local readonly menu=("Change local repo" \
        "Checkout new branch" \
        "Commit changes" \
        "Upload to repo" \
        Quit)

	local -r actions=(change_local_git_repo \
        git_checkout_new_branch \
        git_commit_changes \
        git_push_to_repository \
        quit) 
 	local choice
 	select choice in "${menu[@]}"; do
        ${actions[$((REPLY - 1))]}
        echo
    done
}




main(){
	CODEPATH=${1:-$PWD}
	show_title
	change_prompt
	run
}

main "$@"