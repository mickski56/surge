#!/bin/sh

OUTPUT_DIR=products

BUNDLE_NAME="Surge.vst2"
BUNDLE_DIR="$OUTPUT_DIR/$BUNDLE_NAME"

echo "Creating Linux VST2 Bundle..."

# create basic bundle structure

if test -d "$BUNDLE_DIR"; then
	rm -rf "$BUNDLE_DIR"
fi

VST_SO_DIR="$BUNDLE_DIR"
mkdir -p "$VST_SO_DIR"
cp build/libsurge-vst2.so "$VST_SO_DIR"/Surge.so
