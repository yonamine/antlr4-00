#
#
# - Author  : Frank Yonamine
# - Email   : fsy0jpn@gmail.com
# - Created : 2023/09/16
# - SNS:
#   - Linkedin  :
#   - Youtube   :
#   - Tiktok    :
#   - Facebook  :
#   - Instagram :
#
#
#
FROM ubuntu:23.04

WORKDIR /work

RUN apt update && \
    apt install -y build-essential gdb cmake git ninja-build wget python3 default-jdk && \
    apt install -y vim libtool autoconf automake curl valgrind pkg-config && \
    apt install libfmt-dev libfmt-doc && \
    apt install -y lldb clang clang-format clang-tidy clang-tools && \
    apt install -y antlr4 antlr4-doc libantlr4-runtime-dev && \
    apt clean && \
    apt autoremove && \
    echo "Done!"
