#!/bin/bash

for i in `cat /compile/doc/kernel-config-options/additional-options-generic-yes.txt | grep -v ^#`; do
  echo $i
  ./scripts/config -e $i
done

for i in `cat /compile/doc/kernel-config-options/additional-options-generic-mod.txt | grep -v ^#`; do
  echo $i
  ./scripts/config -m $i
done
