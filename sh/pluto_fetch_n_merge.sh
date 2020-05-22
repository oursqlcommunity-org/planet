#!/bin/bash

#
# Example:
#   ./pluto_fetch_n_merge.sh /home/admin/planet ./html ./log planet_mysql_community
#

# Unofficial Bash Strict Mode (Google it, it is worth the read).
set -euo pipefail
#IFS=$'\n\t'    # I - JFG - am not fully sure about this one yet...

# Move in pluto directory.
cd $1

# Test existance of output directory and move back in pluto directory.
cd $2
cd $1

log_file="$3/pluto_$(date +%F_%H-%M-%S).log"

# Test that we can create log file.
touch $log_file

# Actual work start here.

epoch_start="$(date +%s)"

echo "$(date) - running pluto update." >> $log_file
pluto update >> $log_file
echo >> $log_file

echo "$(date) - running pluto merge." >> $log_file
pluto merge -t $4 -o $2 >> $log_file
echo >> $log_file

epoch_end="$(date +%s)"

echo "$(date) - done in $(($epoch_end - $epoch_start)) seconds." >> $log_file

# EOF.
