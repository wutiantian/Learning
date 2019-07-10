for dir in test1/*
do
     if test -f $dir
     then
       brr=$(echo $dir | tr "." "\n")
       brrs=( $brr )
       fileid=${brrs[0]}
       echo $fileid
       mkdir $fileid
       tar -xvf $dir -C $fileid
    fi
done