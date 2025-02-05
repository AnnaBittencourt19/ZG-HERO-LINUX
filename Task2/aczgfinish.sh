#!/bin/bash
if [ -z "$1" ]; then
	echo "Uso: $0 <nomeDaEntrega>"
	exit 1
fi
git checkout master
git merge "feat-$1"
git branch - "feat-$1"
git push origin --delete "feat-$1"
