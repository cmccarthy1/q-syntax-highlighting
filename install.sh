#!/bin/bash

if [[ $1 = "vim" ]];then
  VIMRC=$HOME/.vimrc
  VIMHOME=$HOME/.vim
  if [[ ! -f "$VIMRC" ]];then
    printf "File doesn't exist in $HOME/.vimrc, do you want to create it (y/n)? "
    read createvimrc
    if [[ $createvimrc = "y" ]];then
      cp $PWD/vim/vimrc $HOME/.vimrc
      echo ".vimrc file created in the appropriate location"
    else
      echo "Continuing without creating the .vimrc"
    fi
  else
    printf "Do you want to overwrite your current .vimrc (y/n)? "
    read newvimrc
    if [[ $newvimrc = "y" ]];then
      cp $PWD/vim/vimrc $HOME/.vimrc
    else
      echo "Continuing without overwriting $HOME/.vimrc"
    fi
  fi

  if [[ ! -d "$VIMHOME" ]];then
    echo"vim is not located in the directory $HOME, please update this script as appropriate or install vim in $HOME"
    exit 1
  else
    printf "moving the appropriate files to the vim, do you want to continue (y/n)? "
    read viminstall
    if [[ $viminstall = "y" ]];then
      mkdir -p $VIMHOME/indent/
      mkdir -p $VIMHOME/syntax/
      cp $PWD/vim/vim/indent/* $VIMHOME/indent/
      cp $PWD/vim/vim/syntax/* $VIMHOME/syntax/
      cp $PWD/vim/vim/filetype.vim $VIMHOME/
      echo "All files have been moved to the appropriate location"
    else
      echo "Installation aborted by the user"
      exit 1
    fi
  fi
elif [[ $1 = "atom" ]];then
  echo "That worked for atom"
else
  echo "Input for arg 1 must be 'atom'/'vim', update accordingly"
  exit 1
fi
echo "Installation instructions followed exiting." 

