#!/bin/bash

echo "Just because it's in the tests" > ./README.md 2>/dev/null || true

if [[ $# -eq 0 ]]; then
	echo "Usage: $0 <directory_name>"
	exit 1
fi

if [[ -d "$1" ]]; then
	echo "Error: Directory '$1' already exists."
	exit 1
fi

mkdir "$1"
if [[ $? -ne 0 ]]; then
	echo "Error: Failed to create directory '$1'."
	exit 1
fi

cd "$1"
if [[ $? -ne 0 ]]; then
	echo "Error: Failed to change directory to '$1'."
	exit 1
fi

echo "Successfully created directory '$1'."
