#!/bin/bash

echo "==================== Server Performance Stats ===================="

# 1. CPU Usage
echo "1. Total CPU Usage:"
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8"%"}')
echo "CPU Usage: $cpu_usage"
echo

# 2. Memory Usage
echo "2. Memory Usage (Free vs Used):"
memory_usage=$(free -h | awk 'NR==2{printf "Used: %s / Total: %s (%.2f%%)\n", $3, $2, $3*100/$2}')
echo "$memory_usage"
echo

# 3. Disk Usage
echo "3. Disk Usage:"
disk_usage=$(df -h / | awk 'NR==2 {printf "Used: %s / Total: %s (%s Used)\n", $3, $2, $5}')
echo "$disk_usage"
echo

# 4. Top 5 Processes by CPU Usage
echo "4. Top 5 Processes by CPU Usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo

# 5. Top 5 Processes by Memory Usage
echo "5. Top 5 Processes by Memory Usage:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
echo

echo "==================== End of Server Stats ===================="
