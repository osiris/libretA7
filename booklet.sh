#!/bin/bash

# This script comes with ABSOLUTELY NO WARRANTY, use at own risk
# Copyright (C) 2014 Osiris Alejandro Gomez <osiris@gcoop.coop>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

#  front
#  +---------+---------+
#  | 16 : 01 | 14 : 03 |
#  +---------+---------+
#  | 12 : 05 | 10 : 07 |
#  +---------+---------+
#  back
#  +---------+---------+
#  | 04 : 13 | 02 : 15 |
#  +---------+---------+
#  | 06 : 11 | 08 : 09 |
#  +---------+---------+

pages=16
j=$[$pages-1]
T='/tmp'
B='A7'

echoerror() { echo "$@" 1>&2; }

if [ -z $1 ]
then
  echoerror "ERROR: no file argument"
  exit 1
else
  PDF=$1
fi

if [ ! -e "$PDF" ]
then
  echoerror "ERROR: no PDF found"
  exit 1
fi

isPDF=$(file "$PDF" | egrep -o "PDF document")
if [ "$isPDF" != "PDF document" ]
then
  echoerror "ERROR: no valid PDF file"
  exit 1
fi

rm -f $T/$B-*.pdf 2>/dev/null

for i in $(seq 2 2 $pages) 
do
	par=$(printf "%02d" "$i") 
	impar=$(printf "%02d" "$j")
	echo pdfjam $PDF "'${par},${impar}'" --outfile $T/$B-${par}.pdf
    F=$T/$B-${par}-${impar}.pdf
    array[$i]=$F
	echo pdfnup $T/$B-${par}.pdf --outfile $F --nup 2x1
	j=$[$j-2];
done

for i in $(seq 2 2 $pages | sort -rn | head -$[$pages/4])
do
  front=$front' '${array[$i]}
done

echo pdfnup $front --outfile $T/$B-front.pdf --nup 2x2
echo pdfnup $T/$B-04-13.pdf $T/$B-02-15.pdf $T/$B-06-11.pdf $T/$B-08-09.pdf --outfile $T/$B-back.pdf --nup 2x2
echo pdfjoin $T/$B-front.pdf $T/$B-back.pdf --outfile $(echo $PDF | sed s/".pdf"/"-$B.pdf"/g)

