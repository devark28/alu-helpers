#!/bin/bash
# shellcheck disable=SC2181

# Check for correct number of arguments
if [[ $# -ne 2 ]]; then
	echo "Usage: $0 <command>"
	echo "Available commands: setup, create, exec"
	exit 1
fi

# Validate the command argument
case "$1" in
setup)
	~pc/alu-helpers/setup.sh "$2"
	;;

create)
	~pc/alu-helpers/create.sh "$2"
	~pc/alu-helpers/publish.sh
	;;

exec)
	~pc/alu-helpers/executioner.sh "$2"
	;;

*)
	echo "Error: Invalid command '$1'"
	echo "Available commands: setup, create, exec"
	exit 1
	;;
esac

if [ $? != 0 ]; then
	echo "Failed to execute command: $1"
else
	echo "Successfully executed command: $1"
fi
