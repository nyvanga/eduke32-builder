#!/bin/bash

set -euo pipefail

CPURPLE="\e[95m"
CNONE="\e[0m"

echo -e "${CPURPLE}##########${CNONE} Cloning eduke32 ${CPURPLE}##########${CNONE}"

git clone https://voidpoint.io/terminx/eduke32.git /eduke32build

echo -e "${CPURPLE}##########${CNONE} Compiling eduke32 ${CPURPLE}##########${CNONE}"

make

echo -e "${CPURPLE}##########${CNONE} Storing binaries ${CPURPLE}##########${CNONE}"

cp -v eduke32 /eduke32/
cp -v mapster32 /eduke32/

echo -e "${CPURPLE}##########${CNONE} Setting ownership ${CPURPLE}##########${CNONE}"

chown -R  "${USER_ID}:${GROUP_ID}" /eduke32/

echo "All done! Hurray!"
