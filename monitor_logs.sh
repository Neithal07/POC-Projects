#!/bin/bash

# Define the correct log file path
LOG_FILE=#!/bin/bash

# Define the correct log file path
LOG_FILE="C:\Users\neith\Desktop\POC PROJECTS\mylog.log"

# Function to monitor logs for errors and warnings
monitor_logs() {
    echo "📜 Monitoring logs for errors and warnings... Press Ctrl + C to stop."

    tail -F "$LOG_FILE" | while read line; do
        if echo "$line" | grep -iE "error|warning"; then
            echo "⚠️ ALERT: $line"
        fi
    done
}

# Start monitoring
monitor_logs


# Function to monitor logs for errors and warnings
monitor_logs() {
    echo "📜 Monitoring logs for errors and warnings... Press Ctrl + C to stop."

    tail -F "$LOG_FILE" | while read line; do
        if echo "$line" | grep -iE "error|warning"; then
            echo "⚠️ ALERT: $line"
        fi
    done
}

# Start monitoring
monitor_logs

