#!/bin/bash

# compile
javac --module-path lib -d mods/crypto src/module-info.java src/crypto/Main.java

# create jar
jar -c --file=crypto.jar --main-class crypto.Main -C mods/crypto .
