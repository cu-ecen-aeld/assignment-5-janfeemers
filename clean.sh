#!/bin/bash
#Script to clean buildroot repo
#Author: Jan Feemers

#source shared.sh

EXTERNAL_REL_BUILDROOT=../base_external
git submodule init
git submodule sync
git submodule update

set -e 
cd `dirname $0`
echo "Clean EXISTING BUILDROOT repo"
cd buildroot
make distclean
