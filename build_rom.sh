#!/bin/bash

free
df -h

export USE_CCACHE=1
export CCACHE_COMPRESS=1
export CCACHE_MAXSIZE=50G # 50 GB

git clone https://github.com/phhusson/treble_experimentations

mkdir AOSP11; cd AOSP11
bash ../treble_experimentations/build.sh android-11.0
