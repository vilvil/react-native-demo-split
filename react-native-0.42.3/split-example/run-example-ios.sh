#!/bin/bash

if [ ! -d 'build' ]; then 
  mkdir build
fi

if [ ! -d 'build/ios/' ]; then 
  mkdir -p build/ios
fi

if [ ! -d 'ios/splitDemo/split/' ]; then 
  mkdir -p ios/splitDemo/split
fi

node ../index.js --platform ios --output build/ios --config .splitconfig --dev false

rm -rf ios/splitDemo/split/*
cp -R build/ios/bundle-output/split/* ios/splitDemo/split

