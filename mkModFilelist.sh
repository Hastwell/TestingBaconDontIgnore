#!/usr/bin/sh

find mods/ -type f -exec shasum {} \; > modList.txt
