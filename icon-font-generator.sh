#!/bin/bash
src=${1:-"."}
build=${2:-"."}

src=$(readlink -f ${src})
build=$(readlink -f ${build})

function usage() {
	echo $(basename $0) SRC_DIR OUTPUT_DIR
}

if [[ ! -d ${src} ]]; then
	echo Invalid input directory "'${src}'" && exit -1
fi

if [[ ! -d ${build} ]]; then
	echo Invalid output directory "'${build}'" && exit -1
fi

docker run --rm -v ${src}:/src -v ${build}:/build icon-font-generator "/src/*.svg" -o "/build"
