#!/bin/bash

jlink --no-header-files --no-man-pages --compress 1 --strip-debug --add-modules java.base,java.naming,java.sql --output java-runtime
