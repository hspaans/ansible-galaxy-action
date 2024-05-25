#!/bin/bash
set -e

command_string="ansible-galaxy role import"

if [ -n "$ACTION_API_KEY" ]
then
	command_string="$command_string --api-key $ACTION_API_KEY ${GITHUB_REPOSITORY%/*} ${GITHUB_REPOSITORY#*/}"
fi

echo "Command: $command_string"
eval "$command_string"
