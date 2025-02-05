#!/bin/bash
LOG_DIR="$HOME/aczg_logs"
mkdir -p "$LOG_DIR"
echo "Executando projeto em $(date)" >> "$LOG_DIR/execucao.log"
if ./compilar_e_executar.sh; then  #nome ficticio
	echo "Sucesso em $(date)" >> "$LOG_DIR/execucao.log"
	echo "Alerta: Sucesso"
else
	echo "Erro em $(date)" >> "LOG_DIR/execucao.log"
	echo "Alerta: Erro"
fi
