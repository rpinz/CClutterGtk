#!/bin/sh
#
Mod=ClutterGtk
Module=${Mod}-1.0
module=`echo "${Module}" | tr '[:upper:]' '[:lower:]'`
mod=`echo "${Mod}" | tr '[:upper:]' '[:lower:]'`
export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"
LINKFLAGS=`pkg-config --libs $module cogl-gl-1.0 cogl-path-1.0 gobject-2.0 glib-2.0 | tr ' ' '\n' | sed 's/^/-Xlinker /' | tr '\n' ' '`
CCFLAGS=`pkg-config --cflags $module cogl-gl-1.0 cogl-path-1.0 gobject-2.0 glib-2.0 | tr ' ' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' `
exec swift build $CCFLAGS $LINKFLAGS "$@"
