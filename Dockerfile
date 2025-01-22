FROM ubuntu:latest

RUN apt-get update -y && apt-get upgrade -y \
  && apt-get install -y \
  build-essential \
  clang \
  nasm \
  valgrind

ENTRYPOINT ["bash"]

