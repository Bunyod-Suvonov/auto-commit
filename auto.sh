#!/bin/sh

project_dir="$HOME/auto-commit"

ts=$(date +%s)
echo "$ts" > $project_dir/main.txt
git -C $project_dir add .
git -C $project_dir commit -m "auto commit - $ts"
git -C $project_dir push
