#!/bin/bash

rm -Rf out/

cmake -S . -B out -G "Ninja"

cmake --build out/ -- -j32

echo "Done!"
