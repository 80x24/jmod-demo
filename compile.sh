#!/bin/bash

# compile
javac --module-path lib -d lib/crypto src/module-info.java src/crypto/Main.java

# create jar
jar -c --file=lib/crypto.jar --main-class crypto.Main -C lib/crypto .
rm -rf lib/crypto
