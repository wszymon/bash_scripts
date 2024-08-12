#!/usr/bin/bash

#---------------------------------------------------------

# Variables
# If the destination and source directories are not provided then use defaults

BACKUP_DIR="/backup/configs"
if [ ! -z "$1" ]; then
	BACKUP_DIR=$1
fi

CONFIG_DIR="/etc"
if [ ! -z "$2" ]; then
	CONFIG_DIR=$2
fi

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

BACKUP_FILE="$BACKUP_DIR/config_$TIMESTAMP.tar.gz"

#----------------------------------------------------------


# Creating backup directory if not exists

mkdir -p $BACKUP_DIR

# Creating compressed archive "$BACKUP_FILE" with source in "$CONFIG_DIR"

tar -czf $BACKUP_FILE $CONFIG_DIR

echo "Configuration files backed up to $BACKUP_FILE"
