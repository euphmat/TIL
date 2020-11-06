#!/usr/bin/env bash
set -Ceuo pipefail

function main(){
        dirs=`ls -l | awk '$1 ~ /d/ {print $9 }'`

        for dir in $dirs;
        do
                cd $dir
                echo -e "\033[0;32m[$dir]\033[0;39m"
                mdbook build
                cd ..
        done
}

main
