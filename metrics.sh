#!/bin/bash

# Display CPU usage
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " $2 + $4 "%"}'

# Display Memory usage
echo "Memory Usage:"
free -m | awk 'NR==2{printf "Used Memory: %sMB (%.2f%%)\n", $3, $3*100/$2 }'
echo "hostname:"$hostname
