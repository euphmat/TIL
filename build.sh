#!/usr/bin/env bash
set -Ceuo pipefail

function main(){
        cd "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"/Shelf
        dirs=`ls -l | awk '$1 ~ /d/ {print $9 }'`
        for dir in $dirs;
        do
                cd $dir
                echo -en "\033[0;34m[$dir]:\033[0;39m"
                if [[ `mdbook build > /dev/null 2>&1 ; echo $?` = 0 ]]; then
                        echo -e " \033[0;32m✔\033[0;39m"
                else
                        echo -e " \033[0;31m×\033[0;39m"
                fi
                cd ..
        done
}

main
