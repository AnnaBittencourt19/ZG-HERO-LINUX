#!/bin/bahs
LOG_DIR="$HOME/aczg_logs"
LOG_FILE="$LOG_DIR/execucao.log"
if [ -f "$LOG_FILE" ]; then
	grep -E "Executando projeto|Sucesso|Erro" "$LOG_FILE"
else
	echo "log não encontrado"
fi
