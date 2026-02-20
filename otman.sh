#!/bin/bash

#bikin folder
mkdir black white &&

#bikin file 
touch black/dot.txt &&

#delete folder dan file
rm -fr white &&

#isi file line 1 hello dan line 2 world
printf "hello \nworld" > black/dot.txt &&

#edit file world tambahin !
sed -i '2 s/world/world !/' black/dot.txt &&

# jadikan hello dan world menjadi 1 line
cat > black/dot.txt << EOF
hello world!
EOF

# copy file
cp black/dot.txt black/dit.txt &&

# move file
mv black/dot.txt ~/Downloads &&

# copy folder
cp -r black ~/Documents