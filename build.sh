#/usr/bin/sh

mkdir dist -p

buildapp --output dist/ascii-table \
         --asdf-path . \
         --asdf-tree ~/quicklisp/dists \
         --load-system ascii-table \
         --entry ascii-table:main
