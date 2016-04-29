#!/usr/bin/env bash

function Usage() {
	echo -e "./<Prog> Iter Name extn"
	exit 0
}


if [ $# -lt 3 ]; then
	Usage
fi


TotalFiles=$1
Name=$2
EXTN=$3
Iter=0
while [ ${Iter} -lt ${TotalFiles} ]; do
	echo -e ${RANDOM} >> $Name${Iter}.${EXTN}
	Iter=`expr $Iter + 1`	
done





