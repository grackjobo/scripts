# Scripts Repository

[![current-readme compliant](https://img.shields.io/badge/readme%20style-scripts-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

This repository contains a collection of utility scripts for various system administration and media management tasks.

## Table of Contents

- [Scripts Overview](#scripts-overview)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Scripts Overview

Below is a list of the scripts included in this repository along with their descriptions:

- `categorize.sh`: Organizes files into directories based on their file extensions.
- `categorizeMovies.sh`: Sorts movie files into genre-specific folders.
- `change_docker_memory`: Adjusts the memory allocation settings for Docker.
- `change_ssh_port`: Changes the default SSH port to enhance security.
- `clean`: Removes temporary files and cleans up system directories.
- `clear_swap`: Clears the swap memory to free up system resources.
- `convertvideos`: Converts video files to different formats using FFmpeg.
- `ddns`: Updates dynamic DNS records with the current IP address.
- `ddns_worky`: A variant of the `ddns` script tailored for specific network configurations.
- `disable_ip_v_6`: Disables IPv6 networking on the system.
- `install_fail2ban`: Installs and configures Fail2Ban to protect against unauthorized access.
- `largefiles`: Identifies large files on the system that may need attention.
- `linkscripts`: Creates symbolic links for scripts in user-defined directories.
- `monitor_load`: Monitors system load and alerts when thresholds are exceeded.
- `moveMovies`: Moves movie files to designated directories based on metadata.
- `prune_containers`: Removes unused Docker containers to free up space.
- `resize_swap`: Adjusts the size of the swap partition.
- `rmlargefiles`: Deletes large files that exceed a specified size.
- `sync`: Synchronizes files between directories or remote systems.

## Usage

To use any of these scripts, clone the repository and execute the desired script:

```sh
git clone https://github.com/grackjobo/scripts.git
cd scripts
./script_name.sh
