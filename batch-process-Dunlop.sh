#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
	  FILE_NAME="$(basename "${f}")"
	  COMMAND1="$(du -sh "${f}" | cut -f1)"
	  COMMAND2="$(wc -w "${f}" | cut -d" " -f1)"
    echo "Processing $FILE_NAME file..."
    echo "$COMMAND1"
    echo "$COMMAND2"
  fi
done

