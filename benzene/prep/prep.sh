#!/bin/bash
# usage: ./prep.sh "b3lyp\ empiricaldispersion=gd3bj" 6-31g* b3lyp_d3bj-631gd ../gjf off
# set last argument to on to turn on counterpoise

theory=$1
basis=$2
abbreviation=$3
path=$4
counterpoise=$5

if [ $# -ne 5 ]; then
    echo usage: ./prep.sh \"b3lyp\ empiricaldispersion=gd3bj\" 6-31g* b3lyp_d3bj-631gd ../gjf off
    exit 1
fi

for i in *.gjf; do
    base=${i%.*}
    target=${base}-${abbreviation}.gjf
    echo $target
    gsed s/theory/"${theory}"/ $i  > temp.txt
    gsed -i s/basis/"${basis}"/ temp.txt
    if [[ $counterpoise = "on" && $i == *"dimer"* ]]; then
        gsed -i "s/^#p/#p\ counterpoise=2/" temp.txt
        gsed -i 8,19s/^./\&\(Fragment=1\)/ temp.txt
        gsed -i 20,31s/^./\&\(Fragment=2\)/ temp.txt
    fi
    mv temp.txt ${path}/${target}
done
