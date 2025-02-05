#!/bin/bash
if [-z "$1" ] || [ -z "$2" ]; then
	echo "Uso: $0 <caminho> <nomeDoProjeto>"
	exit 1
fi
mkdir -p "$1/$2"
echo "Projeto $2 inicializando" > "$1/$2/README.md
cd "$1/$2"
git init 
git add README.md
git commit -m "First commit - repositório configurado"
echo "Projeto '$2' criando em '$1/$2'"
