#!/bin/bash
mkdir 可爱
i=0
resultdir=./可爱/
app=cute_
for dir in ./*
do 
	if test -d $dir
	then
		echo $dir 是目录
		dir=$dir""/
		for file in $dir""*.jpg 
		do 
			i=$(expr $i + 1)
			arr=$(echo $file | tr "/" "\n")
			for x in $arr
			do
				filename=$x
			done

			brr=$(echo $filename | tr "." "\n")
			brrs=( $brr )
			fileid=${brrs[0]}

			echo $file,$fileid,$brr,$i
			resultfile=$resultdir""$app""$i"".""${brrs[1]}

			mv $file $resultfile
		done

		for file in $dir""*.jpeg
		do 
			i=$(expr $i + 1)
			arr=$(echo $file | tr "/" "\n")
			for x in $arr
			do
				filename=$x
			done

			brr=$(echo $filename | tr "." "\n")
			brrs=( $brr )
			fileid=${brrs[0]}

			echo $file,$fileid,$brr,$i
			mv $file $resultdir""$app""$i"".""${brrs[1]}
		done
	fi
done