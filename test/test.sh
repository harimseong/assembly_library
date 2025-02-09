#!/usr/bin/env bash
UNAME=$(uname)

if [ "$1" == "" ]; then
  ./tester_$UNAME
  exit 0
fi

if [ "$UNAME" == "Darwin" ]; then
  leaks -h >/dev/null 2>&1 
  if [ $? -ne 0 ]; then
    echo "leaks error. memory leak detection will not be done."
  else
    leaks -atExit -- ./tester_$UNAME
  fi
elif [ "$UNAME" == "Linux" ]; then
  valgrind --version >/dev/null 2>&1 
  if [ $? -ne 0 ]; then
    echo "valgrind error. memory leak detection will not be done."
  else
    valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ./tester_$UNAME
  fi
fi
