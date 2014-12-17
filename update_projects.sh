#!/bin/bash
for filename in `find . -type d -name "lutece-*"`; do
	echo "--------------------------------------------------------------------------------"
	echo " Updating $filename "
	echo "--------------------------------------------------------------------------------"
	pushd $filename
        git pull origin develop
        popd
	echo " "
done
