#!/bin/bash
#--[1] dialog
function otman_dialog() {
options_folder=$1

otman_folder
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
  read -p "masukan nama folder yang ingin dihapus : " folder_delete_name &&
  mkdir $folder_delete_name
}

function otman_folder() {
otman_folder_list
otman_folder_create
otman_folder_delete
otman_folder_rename
}


function otman() {
otman_dialog $1
}
otman $1
