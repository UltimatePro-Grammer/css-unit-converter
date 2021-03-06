#!/bin/bash
# runs tsc on any file inputted that is in ts/

project_dir="$(dirname $(dirname $(realpath $0)))"

cd $project_dir
cd ts
for file in "$@"
do
    echo "starting $file compile"
    tsc $file --outdir "dist"
    echo "$file compile finished"
done