EXE=./a.out
TESTNUM=100
if [ "$1" != "" ]; then
  TESTNUM=$1
fi
echo "$TESTNUM tests will be conducted"
INDEX=0
SUCCESS=1
while [ $INDEX -le $TESTNUM ]
do
  SEED=$(head -c 16 /dev/random)
  SEEDNUM=$($EXE $SEED)
  INDEX=$((INDEX + 1))
  printf "$INDEX: $SEEDNUM\r"
  if [ $? -eq 1 ]; then
    echo "FAIL"
    SUCCESS=0
  fi
done
if [ $SUCCESS -eq 1 ]; then
  echo "SUCCESS                         "
fi
