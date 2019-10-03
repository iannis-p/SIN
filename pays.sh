#!/bin/bash
shopt -s nocasematch
cpt=0
rdm=$(shuf -n 1 capitales.txt)

pays="$(echo $rdm | awk -F" -- " '{print $1}')"
capitale="$(echo $rdm | awk -F" -- " '{print $2}')"
capitale="$(echo $capitale |tr '[A-Z]' '[a-z]')"
echo "Quel est la capitale du pays : " $pays

while [ $cpt -lt 6 ]; do
  read a
  a="$(echo $a |tr '[A-Z]' '[a-z]')"
  if [ "$a" == "$capitale" ]; then
    echo "MAIS VOILA MAIS C'ETAIT SUR EN FAIT!!!"
    cpt=$(($cpt+6))
    exit
  else
    echo NUL NUL NUL
    cpt=$(($cpt+1))
  fi
 done
echo "La capitale du pays : $pays était : $capitale"
exit
