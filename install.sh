#!/bin/bash

# This install script will determine what type of computer we are running on and then run the appropriate install scripts to get everything (or at least as much as possible set up

function check_for_error() {
	if [ "$?" == 0 ]; then
		echo
		echo "** error installing $1, exiting"
		exit 100
	fi
}

function install_all_in_folder() {
	folder="$1"

	for script in "$(ls $folder)"; do
		bash -c "$folder/$script.sh"
		check_for_error "$script"
	done

}

case "$(uname -s)" in
	Darwin*)	OPERATING_SYSTEM="mac";;
	*)	 	OPERATING_SYSTEM="unknown"
esac

if [ "$OPERATING_SYSTEM" == "mac" ]
then
	install_all_in_folder "mac"
else
	echo unknown operating system, please check uname
	exit 1
fi

install_all_in_folder "any"
