#!/bin/bash

# Function to display usage
function usage() {
  echo "Usage: $0 <log_directory> [archive_directory]"
  echo "  <log_directory>: Path to the directory containing logs to archive"
  echo "  [archive_directory]: Path to the directory to store the archive (default: ./archives)"
  exit 1
}

# Ensure at least one argument is provided
if [ $# -lt 1 ]; then
  usage
fi

# Parse arguments
LOG_DIR=$1
ARCHIVE_DIR=${2:-./archives}  # Default archive directory is './archives'

# Check if the log directory exists
if [ ! -d "$LOG_DIR" ]; then
  echo "Error: Log directory '$LOG_DIR' does not exist."
  exit 1
fi

# Create the archive directory if it doesn't exist
mkdir -p "$ARCHIVE_DIR"

# Generate a timestamped archive name
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="${ARCHIVE_DIR}/${ARCHIVE_NAME}"

# Compress the log directory into the tar.gz file
tar -czf "$ARCHIVE_PATH" -C "$(dirname "$LOG_DIR")" "$(basename "$LOG_DIR")"

# Log the operation
LOG_FILE="${ARCHIVE_DIR}/archive_log.txt"
echo "${TIMESTAMP} - Archived '${LOG_DIR}' to '${ARCHIVE_PATH}'" >> "$LOG_FILE"

# Output result
echo "Logs from '${LOG_DIR}' archived to '${ARCHIVE_PATH}'"
echo "Operation logged in '${LOG_FILE}'"
