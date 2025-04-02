#!/bin/bash

# Unofficial Bash Strict Mode (Google it, it is worth the read).
set -euo pipefail
#IFS=$'\n\t'    # I - JFG - am not fully sure about this one yet...

lock=/tmp/pluto_fetch_n_merge.lock

pluto_dir=/home/mysql-planets/planet
html_dir=./html
template=planet_mysql_community
log_dir=./fnm_logs

mode="${1-}"

if test "$mode" != "nolock"; then
  if ! mkdir $lock > /dev/null 2>&1; then

    test "$mode" != "wait" && echo "Locked: try again later." && exit 1

    while sleep 1; do
      mkdir $lock > /dev/null 2>&1 && break
    done
  fi
fi

trap "rm -rf $lock ; exit" INT TERM EXIT

# Move in pluto directory.
cd $pluto_dir

# Test existance of output directory and move back in pluto directory.
cd $html_dir
cd $pluto_dir

date_val="$(date +%F_%H-%M-%S)"
log_file="$log_dir/pluto_${date_val}.log"
err_file="$log_dir/pluto_${date_val}.err"

# Test that we can create log files.
touch $log_file
touch $err_file

# Run things, with logging.
{ 
  epoch_start="$(date +%s)"

  echo "$(date) - running pluto update."
  pluto update
  echo

  epoch_end="$(date +%s)"
  echo "$(date) - update in $(($epoch_end - $epoch_start)) seconds."
  echo

  echo "$(date) - running pluto merge."
  pluto merge -t $template -o $html_dir
  echo

  epoch_end="$(date +%s)"
  echo "$(date) - done in $(($epoch_end - $epoch_start)) seconds."
} >> $log_file 2>> $err_file

# EOF.
