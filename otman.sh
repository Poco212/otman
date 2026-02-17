#!/bin/bash
#--[1] dialog
function otman_dialog() {
options=$1
options_folder=$2
options_files=$2

otman_folder
otman_file
}
#--[2]folder
#-- [2][1] listing folder
function otman_folder_list() {
  
  if [[ $options_folder != "list" ]]; then
    return
    fi
  read -p "masukan destinasi folder : " folder_destinasi &&
  ls -la $folder_destinasi
}

#-- [2][2] create folder
function otman_folder_create() {
  
  if [[ $options_folder != "create" ]]; then
    return
    fi
  read -p "masukan nama folder : " folder_name &&
  mkdir -p $folder_name
}

#-- [2][3] delete folder
function otman_folder_delete() {
  
  if [[ $options_folder != "delete" ]]; then
    return
    fi
  read -p "masukan nama folder yang ingin dihapus : " folder_delete_name &&
  rm -fr $folder_delete_name
}

#-- [2][4] rename folder
function otman_folder_rename() {
  
  if [[ $options_folder != "rename" ]]; then
    return
    fi
  read -p "masukan nama folder lama : " nama_lama &&
  read -p "masukan nama folder baru : " nama_baru &&
  mv $nama_lama $nama_baru
}

#-- [2][5] move folder
function otman_folder_move() {
  
  if [[ $options_folder != "move" ]]; then
    return
    fi
  read -p "masukan nama destinasi folder lama : " destinasi_lama &&
  read -p "masukan nama destinasi folder baru : " destinasi_baru &&
  mv $destinasi_lama $destinasi_baru
}

#-- [2][6] copy folder
function otman_folder_copy() {
  
  if [[ $options_folder != "copy" ]]; then
    return
    fi
  read -p "masukan nama folder yang ingin dicopy : " folder_copy &&
  read -p "masukan nama destinasi folder  : " destinasi_folder &&
  cp -r $folder_copy $destinasi_folder
}


function otman_folder() {
if [[ $options != "folder" ]]; then
    return
fi

otman_folder_list
otman_folder_create
otman_folder_delete
otman_folder_rename
otman_folder_move
otman_folder_copy
}

#--[3] file
#--[3][1] listing file
function otman_file_list() {
  
  if [[ $options_files != "list" ]]; then
    return
    fi
  read -p "masukan destinasi file : " file_destinasi &&
  ls -la $file_destinasi
}
#--[3][1] create file
function otman_file_create() {
   if [[ $options_files != "create" ]]; then
    return
    fi
   read -p "masukan nama file : " file_name &&
   touch $file_name 
}

#-- [3][2] delete file
function otman_file_delete() {
  
  if [[ $options_files != "delete" ]]; then
    return
    fi
  read -p "masukan nama file yang ingin dihapus : " file_delete_name &&
  rm -fr $file_delete_name
}

#-- [3][3] rename file
function otman_file_rename() {
  
  if [[ $options_files != "rename" ]]; then
    return
    fi
  read -p "masukan nama file lama : " nama_lama &&
  read -p "masukan nama file baru : " nama_baru &&
  mv $nama_lama $nama_baru
}

#-- [3][4] fill file
function otman_file_fill() {
  
  if [[ $options_files != "fill" ]]; then
    return
    fi
  read -p "masukan nama file  : " nama_file &&
  read -p "masukan isi file : " isi_file &&
  echo $isi_file >> $nama_file

}

#-- [3][4][1] fill file
function otman_file_fill_2word() {
  
  if [[ $options_files != "fills" ]]; then
    return
    fi
  read -p "masukan nama file  : " nama_file &&
  read -p "masukan isi file : " isi_file &&
  echo "$isi_file" >> $nama_file

}

#-- [3][5] edit file
function otman_file_edit() {
  
  if [[ $options_files != "edit" ]]; then
    return
    fi
  
}

#-- [3][6] move file
function otman_file_move() {
  
  if [[ $options_files != "move" ]]; then
    return
    fi
  
}

#-- [3][7] copy file
function otman_file_copy() {
  
  if [[ $options_files != "copy" ]]; then
    return
    fi
  
}

function otman_file() {
if [[ $options != "file" ]]; then
    return
fi

 otman_file_list
 otman_file_create
 otman_file_delete
 otman_file_rename
 otman_file_fill
 otman_file_fill_2word
 otman_file_edit
 otman_file_move
 otman_file_copy
}


function otman() {
otman_dialog $1 $2
}
otman $1 $2
