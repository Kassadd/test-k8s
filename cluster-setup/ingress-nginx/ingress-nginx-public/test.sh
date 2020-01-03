#!/bin/bash

helmDepUp () {
  path=$1
  (
    cd $path
    echo "Updating dependencies in $path ..."
    helm dep up
    echo "... done."
    if [ -d charts ]; then
      for path in $(find charts -mindepth 1 -maxdepth 1 -type d)
      do
        helmDepUp $(pwd)"/"$path
      done
    fi
  )
}

helmDepUp .
