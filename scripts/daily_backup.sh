#!/bin/bash -xue

backup_storage_path=~/backups
to_backup_path=/root/docker_mount/ts3/
MAX_NUMBER=3


current_date=$(date +"%s")
no_files=$(ls $backup_storage_path | grep '\.tar.gz' | wc -l)


# get number of files ending with .tar.gz
if [ "$no_files" -eq "${MAX_NUMBER}" ]; then
  oldest_file_name=$(ls $backup_storage_path | grep '\.tar.gz' | sort -n | head -n 1)
  echo "Removing $oldest_file_name"
  rm -f "$backup_storage_path/$oldest_file_name"
else
  echo "Less than max files present"
fi

echo "creating backup with $current_date"
tar -czvf $backup_storage_path/${current_date}.tar.gz $to_backup_path
