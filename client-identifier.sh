#!/bin/bash
if [ $# -eq 0 ]; then
  echo "引数がありません。"
  exit 1
elif [ $# -ge 2 ]; then
  echo "引数が1つではありません。"
  exit 1
else
  MAC=${1}
  MAC=`echo "$MAC" | sed s/[:-]//g`
  MAC=01$MAC
  MAC=`echo "$MAC" | sed -e 's/\(....\)/\1./g'`
  echo $MAC
fi
