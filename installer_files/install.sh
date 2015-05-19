#!/bin/sh

case "$PRODUCT" in
   "Jobserver") echo "Will install jobserver"
   ./Tal*64*.run --optionfile Jobserver.txt 
   ;;
   "Commandline") echo "Will install cmdline" 
   ./Tal*64*.run --optionfile Commandline.txt
   ;;
   "TAC") echo "Will install TAC" 
   ./Tal*64*.run --optionfile TAC.txt
   ;;
esac
