#!/bin/bash

if [ -z $1 ]
then
  cd examples/
  for i in *.pdf
  do
    echo $i
    ../booklet.sh $i
  done
else
    echo $1
    ./booklet.sh $1
fi

