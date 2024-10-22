#!/bin/bash

# point to your openscad executable
openscad='/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD'
#openscad='/mnt/c/Program\ Files/OpenSCAD/openscad.exe'
#openscad='/usr/bin/openscad'

function make_dxf_file {
  if [ ! -f "$1" ]; then
    $openscad -o "$1" \
      -D "\$kicad=true" \
      -D "\$xy=true"  \
      -D "slice=\"$2\""  \
      make2d.scad
  else
    echo file "$1" already exists.
  fi
}

make_dxf_file   enc-top.dxf        top
make_dxf_file   enc-bottom.dxf     bottom
make_dxf_file   enc-aux-side.dxf   aux-side
make_dxf_file   enc-usb-side.dxf   usb-side

ls -alrt *.dxf
