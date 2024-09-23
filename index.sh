#!/bin/bash

# Check for correct number of arguments
if [[ $# -ne 2 ]]; then
	echo "Usage: $0 <command>"
	echo "Available commands: setup, create"
	exit 1
fi

# Validate the command argument
case "$1" in
	setup)
		source /alu-helpers/setup.sh "$2" ;;

	create)
		source /alu-helpers/create.sh "$2"
		source /alu-helpers/publish.sh ;;

	*)
		echo "Error: Invalid command '$1'"
		echo "Available commands: setup, create"
		exit 1 ;;
esac

echo "Successfully executed command: $1"
