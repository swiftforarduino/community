#! /bin/bash
# apify - create a .txt documentation file for all .swift files in this folder

for f in *.swift
do
  sed -nEf apify.sed $f > ${f%.swift}.txt
done