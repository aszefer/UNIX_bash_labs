#!/bin/bash

find . -type f -links 1  -not -perm /g=w,o=w|
while read $line wc -c lt $1
