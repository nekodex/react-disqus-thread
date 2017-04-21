#!/bin/sh
BUILD="webpack --devtool source-map --config webpack.build.js"

# Clean old builds
rm -rf build/ dist/

# Transpile ES6
babel -d build lib

# Generate bundle
mkdir -p dist
eval $BUILD
eval "MINIFY=1 $BUILD"

# Copy package
cp README.md build/
node -p 'p=require("./package");p.scripts=p.devDependencies=undefined;JSON.stringify(p,null,2)' > build/package.json
