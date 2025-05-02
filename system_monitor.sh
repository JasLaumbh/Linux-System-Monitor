#!/bin/bash


CPU_THRESHOLD=80
MEM_THRESHOLD=80
DISK_THRESHOLD=90


LOG_FILE="/var/log/system_monitor.log"


CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | cut -d. -f1)
MEM_USAGE=$(free | awk '/Mem:/ { printf("%.0f"), $3/$2 * 100.0 }')
DISK_USAGE=$(df / | tail -1 | awk '{print $5}' | tr -d '%')


echo "[$(date)] CPU: $CPU_USAGE%, RAM: $MEM_USAGE%, Disk: $DISK_USAGE%" >> "$LOG_FILE"


[ "$CPU_USAGE" -gt "$CPU_THRESHOLD" ] && echo "ALERT: High CPU usage at $CPU_USAGE%" | wall
[ "$MEM_USAGE" -gt "$MEM_THRESHOLD" ] && echo "ALERT: High RAM usage at $MEM_USAGE%" | wall
[ "$DISK_USAGE" -gt "$DISK_THRESHOLD" ] && echo "ALERT: High Disk usage at $DISK_USAGE%" | wall
