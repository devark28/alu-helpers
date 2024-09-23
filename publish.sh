#!/bin/bash
git add .

while true; do
	echo "Enter the commit message: "
	read message

	if [[ -z "$message" ]]; then
		echo "Error: Commit message cannot be empty"
	else
		break
	fi
done

git commit -m "$message"

if [[ $? -ne 0 ]]; then
	echo "Error: Failed to commit changes"
	exit 1
fi

git push

if [[ $? -ne 0 ]]; then
	echo "Error: Failed to push changes"
	exit 1
fi
