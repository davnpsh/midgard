#!/bin/bash

# Define variables
BORG_REPO=""
SOURCE_DIR=""

# Create a unique archive name with date and time
ARCHIVE_NAME="docker-containers_($(date +"%Y%m%d_%H%M%S"))"

# Run Borg Backup
borg create --stats --progress --compression lz4 $BORG_REPO::$ARCHIVE_NAME $SOURCE_DIR

# Prune old archives to keep the last backup of each day, week, and month
borg prune \
  --keep-within=1d \
  --keep-daily=7 \
  --keep-weekly=4 \
  --keep-monthly=12 \
  $BORG_REPO
