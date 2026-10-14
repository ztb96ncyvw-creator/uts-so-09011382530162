#!/bin/bash

# Nama: M. ADIB SATRIYO WIBOWO
# NIM: 09011382530162

SOURCE_DIR="/home/adib/data_09011382530162"
BACKUP_DIR="/home/adib/backup_09011382530162"
LOG_FILE="$BACKUP_DIR/backup.log"

mkdir -p "$BACKUP_DIR"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Direktori sumber tidak ditemukan!"
    exit 1
fi

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
ARCHIVE_NAME="backup_09011382530162_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="$BACKUP_DIR/$ARCHIVE_NAME"

find "$SOURCE_DIR" -type f -name "*.txt" -print0 |
    tar --null -czvf "$ARCHIVE_PATH" --files-from=-

if [ $? -eq 0 ]; then
    FILE_COUNT=$(tar -tzf "$ARCHIVE_PATH" | wc -l)
    ARCHIVE_SIZE=$(du -h "$ARCHIVE_PATH" | cut -f1)

    printf '%s | %s | %s file | %s\n' \
        "$(date '+%Y-%m-%d %H:%M:%S')" \
        "$ARCHIVE_NAME" \
        "$FILE_COUNT" \
        "$ARCHIVE_SIZE" >> "$LOG_FILE"

    echo "Backup berhasil!"
    echo "Arsip: $ARCHIVE_PATH"
    echo "Jumlah file: $FILE_COUNT"
    echo "Ukuran arsip: $ARCHIVE_SIZE"
else
    echo "Backup gagal!"
    rm -f "$ARCHIVE_PATH"
    exit 1
fi
