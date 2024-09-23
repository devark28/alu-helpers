#!/bin/bash

if [[ $# -eq 1 ]]; then
	filename="$1"
	echo -e "#!/bin/bash\n" > "$filename"

	if [[ $? -ne 0 ]]; then
		echo "Error: Failed to create file $filename"
		exit 1
	fi

	chmod u+x "$filename"

	if [[ $? -ne 0 ]]; then
		echo "Error: Failed to make file $filename executable"
		exit 1
	fi

	vim "$filename"

	if [[ $? -ne 0 ]]; then
		echo "Error: Failed to open file $filename in Vim"
		exit 1
	fi
else
	echo "Usage: $0 <filename>"
	exit 1
fi
