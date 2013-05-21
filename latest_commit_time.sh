#!/bin/bash

for FILE in $(git ls-files); do
	TIME=$(git log --pretty=format:%ci -n1 $FILE)
	#echo -e $TIME"\t"$FILE

	STAMP=`date -jnu -f "%Y-%m-%d %H:%M:%S %z" "$TIME" "+%Y%m%d%H%M.%S"`
	#echo $STAMP

	touch -t $STAMP $FILE
	#echo "touch -t $STAMP $FILE"
done
