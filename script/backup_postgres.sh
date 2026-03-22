#!/bin/bash

PATH=/usr/bin:/bin
DATA=$(date +%Y-%m-%d_%H-%M-%S)
BANCO="teste"
BASE="/home/gomes/Documentos/lab_pratica"
DESTINO="${BASE}/backup"
LOGDIR="${BASE}/log"
LOG="${LOGDIR}/backup.log"
ARQUIVO="${DESTINO}/${BANCO}_${DATA}.sql"

mkdir -p "$DESTINO"
mkdir -p "$LOGDIR"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Iniciando backup do banco $BANCO..." >> "$LOG"

/usr/bin/pg_dump "$BANCO" > "$ARQUIVO" 2>> "$LOG"

if [ $? -eq 0 ]; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Backup realizado com sucesso: $ARQUIVO" >> "$LOG"
else
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] ERRO ao realizar backup do banco $BANCO" >> "$LOG"
fi
