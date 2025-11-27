#!/bin/bash

TARGET_DIR="/root/.config/test/data"
SOURCE_DIR="/tmp/data"

# Check if target directory exists
if [ ! -d "$TARGET_DIR" ]; then
    mkdir -p "$TARGET_DIR"
    chmod 777 "$TARGET_DIR"
fi

# Copy recursively from /tmp/data to the target directory
if [ -d "$SOURCE_DIR" ]; then
    cp -r "$SOURCE_DIR/"* "$TARGET_DIR/"
fi

TARGET_DIR="/root/.config/test/data/custom"
if [ ! -d "$TARGET_DIR" ]; then
    mkdir -p "$TARGET_DIR"
    chmod 777 "$TARGET_DIR"
fi

/usr/bin/xbvr