#!/usr/bin/env bash

# dotfilesへ移動
cd $(dirname $0)/..

# シンプルなdotfilesをリンク
for file in \
  .profile .bashrc
do
	ln -snvf ${PWD}/$file ~/
done