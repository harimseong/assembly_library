#!/usr/bin/env bash
UNAME=$(uname)
TEST_CMD=

if [ "$UNAME" == "Darwin" ]; then
  leaks -h >/dev/null 2>&1 
  if [ $? -ne 0 ]; then
    echo "leaks error. memory leak detection will not be done."
    TEST_CMD=./tester_$UNAME
  else
    TEST_CMD="leaks -atExit -- ./tester_$UNAME"
  fi
elif [ "$UNAME" == "Linux" ]; then
  valgrind --version >/dev/null 2>&1 
  if [ $? -ne 0 ]; then
    echo "valgrind error. memory leak detection will not be done."
    TEST_CMD=./tester_$UNAME
  else
    TEST_CMD="valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ./tester_$UNAME"
  fi
fi
echo $TEST_CMD
$TEST_CMD
