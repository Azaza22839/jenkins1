#!/bin/bash
log_file="/var/log/apache2/access.log"
errors=$(sudo cat "$log_file" | grep -E "4[0-9][0-9]" | grep -E "5[0-9][0-9]")

# Check for 4xx and 5xx errors
if [ -n "$errors" ]; then
  echo "4xx and 5xx errors found in log file:"
  echo "$errors"
else
  echo "No 4xx and 5xx errors found in log file."
fi
