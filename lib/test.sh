#!/usr/bin/env bash
UNAME=$(uname)
TEST_CMD=

if [ "$UNAME" == "Darwin" ]; then
  leaks -v 2&>1 >/dev/null
  if [ $? -ne 0 ]; then
    echo "no leaks found. memory leak detection will not be done."
    TEST_CMD=./tester_$UNAME
  else
    TEST_CMD=leaks -atExit -- ./tester_$UNAME
  fi
elif [ "$UNAME" == "Linux" ]; then
  valgrind --version 2>&1 >/dev/null
  if [ $? -ne 0 ]; then
    echo "no valgrind found. memory leak detection will not be done."
    TEST_CMD=./tester_$UNAME
  else
    TEST_CMD="valgrind --leak-check=full --show-leak-kinds=all ./tester_$UNAME"
  fi
fi
echo $TEST_CMD
$TEST_CMD
