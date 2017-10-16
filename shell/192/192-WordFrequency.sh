#!/bin/bash

# 知识点: gsub
# 注意 gsub没有被{}括起来

cat words.txt | awk 'gsub(/^ *| *$/, "")' | awk '{for(i=1;i<=NF;i++) {words[$i]++}}END{for(k in words){print k" "words[k]}}' | sort -k2 -nr
