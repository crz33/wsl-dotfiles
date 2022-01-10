#!/usr/bin/env bash

# dotfilesへ移動
cd $(dirname $0)/..

# シンプルなdotfilesをリンク
for file in \
  .profile .bashrc .bash_aliases
do
	ln -snvf ${PWD}/$file ~/
done