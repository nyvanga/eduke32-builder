#!/bin/bash

CGREEN="\e[32m"
CNONE="\e[0m"

echo -e "${CGREEN}#####${CNONE} Cloning eduke32 ${CGREEN}#####${CNONE}"

git clone https://voidpoint.io/terminx/eduke32.git /eduke32build

echo -e "${CGREEN}#####${CNONE} Compiling eduke32 ${CGREEN}#####${CNONE}"

cd /eduke32build
make

echo "${CGREEN}#####${CNONE} Storing binaries ${CGREEN}#####${CNONE}"

cp -v /eduke32build/eduke32 /eduke32/
cp -v /eduke32build/mapster32 /eduke32/

echo -e "${CGREEN}#####${CNONE} Setting ownership ${CGREEN}#####${CNONE}"

chown -R  "${USER_ID}:${GROUP_ID}" /eduke32/

echo "All done! Hurray!"
