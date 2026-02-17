#!/bin/bash
#--[1] dialog
function otman_dialog() {
options_folder=$1

otman_folder
}
#--[2]folder
#-- [2][1] create folder
function otman_folder_create() {
  
  if [[ $options_folder != "create" ]]; then
    return
    fi
  read -p "masukan nama folder : " folder_name &&
  mkdir $folder_name
}

#-- [2][2] delete folder
function otman_folder_delete() {
  
  if [[ $options_folder != "delete" ]]; then
    return
    fi
  read -p "masukan nama folder yang dihapus : " folder_delete_name &&
  mkdir $folder_delete_name
}

function otman_folder() {
otman_folder_create
otman_folder_delete
}


function otman() {
otman_dialog $1
}
otman $1
