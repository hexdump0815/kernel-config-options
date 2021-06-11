#!/bin/bash

for i in `cat /compile/doc/kernel-config-options/options-to-remove-generic.txt | grep -v ^#`; do
  echo $i
  ./scripts/config -d $i
done
