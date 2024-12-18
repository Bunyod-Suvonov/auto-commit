#!/bin/sh

x=$(shuf -i 1-4 -n 1)
y=$(shuf -i 0-10000 -n 1)
z=$(shuf -i 0-10000 -n 1)
project_dir="$HOME/auto-commit"

if [ $y = $z ]; then
	exit
fi

for i in $(seq 1 $x);
do
	ts=$(date +%s)
	echo "$ts" > $project_dir/main.txt
	git -C $project_dir add .
	git -C $project_dir commit -m "auto commit - $ts"
	git -C $project_dir push
done
