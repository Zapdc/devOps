https://roadmap.sh/projects/server-stats

# Server Performance Stats Script

This project contains a Bash shell script called `server-stats.sh` that analyzes basic server performance stats. It can be run on any Linux-based system, including WSL (Windows Subsystem for Linux).

## Features
The script provides the following server performance statistics:
- **Total CPU usage**  
- **Total memory usage** (Free vs Used including percentage)  
- **Total disk usage** (Free vs Used including percentage)  
- **Top 5 processes by CPU usage**  
- **Top 5 processes by memory usage**  

## How to Use

1. **Clone the Repository**  
   Open your terminal and run:
   ```bash
   git clone https://github.com/Zapdc/devOps.git
   cd devOps

2. **Make the Script Executable**
   chmod +x server-stats.sh

3. **Run the Script**
   ./server-stats.sh



**SAMPLE OUTPUT**

CPU Usage: 45%
Memory Usage: 2.1 GB / 4 GB (52%)
Disk Usage: 20 GB / 50 GB (40%)
Top 5 Processes by CPU Usage:
  PID   %CPU   COMMAND
  1234   35%   chrome
  5678   28%   node
Top 5 Processes by Memory Usage:
  PID   %MEM   COMMAND
  9012   15%   postgres
  3456   12%   java
