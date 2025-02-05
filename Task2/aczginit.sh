#!/bin/bash
if [ -z "$1" ]; then
	echo "Uso: $0 <nomeDaEntrega>"
	exit 1
fi
git status 
git checkout -b "feat-$1"
git branch -a
