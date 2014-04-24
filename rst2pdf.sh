#!/bin/bash

if [ -z $1 ]
then
  for i in *.rst
  do
    echo $i
    rst2pdf -q -l es -s booklet.style $i -o $(echo $i | sed s/".rst"/".pdf"/g)
  done
else
    echo $1
    rst2pdf -q -l es -s booklet.style $1 -o $(echo $1 | sed s/".rst"/".pdf"/g)
fi

