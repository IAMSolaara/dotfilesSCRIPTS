#!/bin/sh

CHOICE=`man -k . | fzf`
SECTION=`echo $CHOICE | awk '{print $2}' | sed -r 's/\(|\)//g'`
PAGE=`echo $CHOICE | awk '{print $1}'`

man $SECTION $PAGE
