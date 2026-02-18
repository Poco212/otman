#!/bin/bash

#bikin folder
mkdir black white &&

#bikin file 
touch black/dot.txt black/dit.txt &&

#delete folder dan file
rm -fr white black/dit.txt &&

#isi file line 1 hello dan line 2 world
printf "hello \nworld" > black/dot.txt &&

#edit file world tambahin !
sed -i '2 s/world/world!/' black/dot.txt &&

# copy file
cp black/dot.txt ~/

# jadikan hello dan world menjadi 1 line


# copy file


# move file


# copy folder