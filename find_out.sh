let exe=0
let no_exe=0
let di=0
for i in `ls $1`
    do
    if [ -d $1/$i ]
    then echo $i is exe; let di++; echo $i >> directories.txt
    elif [ -x $1/$i ]
    then echo $i is di; let exe++; echo $i >> executables.txt 
    else
    let no_exe++
    fi
done
echo $exe fichiers sont exécutables, $di sont des dossiers