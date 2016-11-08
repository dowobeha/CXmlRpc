#!/bin/bash

for h in /usr/include/xmlrpc-c/*.h ; do 

    n1="${h##*/}"
    n2=$(echo ${n1%.h} | tr [a-z] [A-Z]) 
    n3="_SWIFT_CXMLRPC_${n2}_H_"

    echo "#ifndef $n3" >  $n1
    echo "#define $n3" >> $n1
    echo               >> $n1
    echo "#include \"xmlrpc-c/$n1\"" >> $n1
    echo               >> $n1
    echo "#endif"      >> $n1

done
