# Log Archive Tool

A simple CLI tool to compress and archive logs with timestamps, built using Bash.

## Features

-   Compress log files into a `.tar.gz` archive.
-   Save archives in a specified directory.
-   Log all operations with timestamps in an archive log file.

## Requirements

-   **Bash Shell** (available on most Unix-based systems)
-   **tar Command** (standard in most Linux/Unix systems)

## Folder Structure

```plaintext
log-archive-tool/
├── log_archiver.sh   # Main script
└── README.md         # Instructions and documentation

```

## Usage

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/log-archive-tool.git
cd log-archive-tool

```

### 2. Make the Script Executable

```bash
chmod +x log_archiver.sh

```

### 3. Run the Script

```bash
./log_archiver.sh <log_directory> [archive_directory]

```

#### Arguments

-   `<log_directory>`: Path to the directory containing logs to archive (required).
-   `[archive_directory]` (optional): Path to store the archive (default: `./archives`).

#### Example

```bash
# Archive logs in /var/log and store them in ./archives
./log_archiver.sh /var/log

# Archive logs in /var/log and store them in /path/to/archive
./log_archiver.sh /var/log /path/to/archive

```

### 4. Logs and Archive Files

-   **Archive Files**: The script saves the compressed logs with a timestamped name, e.g., `logs_archive_20240816_100648.tar.gz`.
-   **Operation Log**: A log file (`archive_log.txt`) is created in the archive directory with details of each operation, including the timestamp.

----------

## Advanced Features (Optional)

### Automating with Cron Jobs

To schedule the script to run periodically, add a cron job. For example:

1.  Open the crontab editor:
    
    ```bash
    crontab -e
    
    ```
    
2.  Add a cron job to run the script daily at midnight:
    
    ```bash
    0 0 * * * /path/to/log_archiver.sh /var/log /path/to/archive
    
    ```
    

----------

## Contribution

Contributions are welcome! To contribute:

1.  Fork this repository.
2.  Create a new branch for your feature: `git checkout -b feature-name`.
3.  Commit your changes: `git commit -m "Add new feature"`.
4.  Push to your branch: `git push origin feature-name`.
5.  Open a pull request.

----------

## Feedback and Support

If you have any questions, suggestions, or issues, feel free to open an issue in the repository or reach out to the community on Discord.

Happy archiving! 🚀

----------

If you’re asking for something else like additional features or sections, please clarify!