#!/bin/bash
# shellcheck disable=SC2181

GREEN="[ACTION - $(date)]: "
YELLOW="[INFO - $(date)]: "
NORMAL=''
# if [ -t 1 ]; then
#     GREEN='\033[32m'
#     YELLOW='\033[33m'
#     NORMAL='\033[0m'
# else
#     GREEN=''
#     YELLOW=''
#     NORMAL=''
# fi

if [ -z "$file" ] || [ -z "$fileBasename" ]; then
    echo "variables file & fileBasename are unset"
    exit 1
fi

echo -e "${GREEN}Starting file processing...${NORMAL}"
if [ ! -x "${file}" ]; then
    echo -e "${YELLOW}Granting execute permission to ${fileBasename}...${NORMAL}"
    chmod u+x "${file}" >/dev/null
fi

if [ $? != 0 ]; then
    echo "Failed"
    exit 1
fi
echo -e "${YELLOW}Staging changes in git...${NORMAL}"
git add . >/dev/null

if [ $? != 0 ]; then
    echo "Failed"
    exit 1
fi
echo -e "${YELLOW}Committing changes...${NORMAL}"
git commit -m "Make ${fileBasename} executable" >/dev/null

if [ $? != 0 ]; then
    echo "Failed"
    exit 1
fi
echo -e "${YELLOW}Pushing changes to remote...${NORMAL}"
# git push >/dev/null
git push

if [ $? != 0 ]; then
    echo "Failed"
    exit 1
fi
clear
echo -e "${GREEN}File processing complete.${NORMAL}"
