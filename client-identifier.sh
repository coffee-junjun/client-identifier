#!/bin/sh
MAC=${1}
MAC=`echo "$MAC" | sed s/[:-]//g`
MAC=01$MAC
MAC=`echo "$MAC" | sed -e 's/\(....\)/\1./g'`
echo $MAC
