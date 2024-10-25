// Not entirely sure why, 
// but we have to include these, too,
// from the main file
include <BOSL2/std.scad>
include <BOSL2/rounding.scad>
include <BOSL2/screws.scad>

include <params.scad>

//use <BusPirate5REV8-v10.scad>
use <enc.scad>
use <hx10p.scad>
use <wr9p.scad>

/* [Output Control] */
// make which slice:
slice = "top"; // [top, bottom, aux-side, usb-side, test]
// Make 2D xy projection
$xy = true;
// KiCad transformation
$kicad = true;

// Hides any following variable 
// assignments from Customizer
module __Customizer_Limit__ () {}  

echo( slice = slice );
echo( $kicad = $kicad );
echo( $xy = $xy );

fid_size = 1.75;
fid_wall = 0.01;
fid_thk = 1.0;
fid = [fid_size, fid_size, fid_thk];
module fiducial(posn=[0,0]) {
  translate([posn.x, posn.y, 0]) {
    cube( [2*fid.x, fid_wall, fid.z], center=true );
    cube( [fid_wall, 2*fid.y, fid.z], center=true );
    *translate([+0.5*fid.x+0.5*eps, +0.5*fid.y+0.5*eps, 0])
      cube( fid, center=true );
    *translate([-0.5*fid.x-0.5*eps, -0.5*fid.y-0.5*eps, 0])
      cube( fid, center=true );
    *difference() {
      cylinder(r=fid_size+2*fid_wall, h=fid_thk, center=true, $fn = 100);
      cylinder(r=fid_size+fid_wall, h=fid_thk+eps, center=true, $fn = 100);
    }
  }
}


//========================================
// code to make 2D XY DXF file:
//========================================
//
// (1) X/Y Translation
//
// mounting hole used as reference
// in SCAD design, the design is centered at 0,0
// hole-to-hole spacing is:
//      pcb_xy - 2*screw_offset_xy
//      60 - 2*4 = 52
// In KiCad design, the holes are at:
//   UL  103.9    64.1
//   UR  155.9    64.1
//   LL  103.9   116.1
//   LR  155.9   116.1
// This puts the KiCad board center at 
// location:
//   x = 103.9 + 26  = 129.9
//   y =  64.1 + 26  =  90.1
//
// (2) Mirroring
//
// Y-axis:
//   * SCAD y-axis increases upwards
//   * KiCad Y-axis increases downwards
//
// X-axis:
//   * The enclosure top is the PCB design bottom.
//
// (3) Rotation
//
// SCAD design, I/O 10 posn connector points to the left
// KiCad design, connector points down. 
//
// (4) Panel Reference Origin (correct description?)
//
// In KiCad design there is a reference origin related 
// to the panel and rails. It is located at:
//   x = 99.65 mm
//   y = 125.1 mm
//
// ========================================
// Sides of the enclosure, aux and USB connector
//
// The sides don't have a connection to the mounting holes,
// they will be referenced to the edges of the Kicad PCB
//
// mounting holes to corners of enclosure distance:
// xy = 6.6 x 6.6 mm 

// echo($vpr); // shows rotation
// echo($vpt); // shows translation 
// echo($vpf); // shows the FOV (Field of View)
// echo($vpd); // shows camera distance

s2k_off = [ 129.9, 90.1, 0.0 ];
s2k_rot = 90;

// hole offsets
hoff = [ 6.6, 6.6, 0.0 ];

// panel origin offset
poff = [ 99.65, 125.1 ];

// separation between side views 
// and main body
soff_aux = 40;
soff_usb = 30;

// these convert children from enclosure SCAD view
// into coordinate system suitable for KiCad design
module scad2kicad() {
  if($kicad) {
    mirror( [0,1,0] ) {
      projection() fiducial(poff);
      translate( s2k_off ) 
        rotate( s2k_rot, [0,0,1] )
          children();
    }
  } else {
    children();
  }
}
module scad2kicad_sides() {
  if($kicad)
    mirror( [0,1,0] ) {
      translate( s2k_off ) 
        rotate( s2k_rot, [0,0,1] )
          children();
    }
  else
    children();
}

// these functions position the object for projection 
// into the XY plane in order to export to DXF files
// The sides are a bit more difficult because they
// have to slice the case to show the features.
// Also have to add detailed I/O and aux I/O connectors
// for pin-1 details.
module project() {
  if($xy)
    projection() 
      translate([0,0,10]) 
        children();
  else 
    children();
}
module project_aux_side() {
  if($xy) {
    translate( [case_h+0.5*body_xy+soff_aux,0,0]) 
      mirror([1,0,0])
      projection(cut=false)
          translate([0,0,0.5*body_xy+5])
            rotate(90,[0,1,0])
              children();
  } else children();
}
module project_usb_side() {
  if($xy) {
    //translate( [-case_h-0.5*body_xy-soff_usb,0,0]) 
    //mirror([1,0,0])
    projection()
      translate([0,0,0.5*body_xy+2])
        rotate(-90,[0,1,0])
          children();
  } else children();
}


if( slice == "top" ) {
  scad2kicad() 
    project()
      case_top();
} else if( slice == "bottom" ) {
  scad2kicad()
    project() 
      case_bottom();
} else if( slice == "aux-side" ) {
  *translate([0,0,bottom_h-bottom_lip_h]) header_10P();
  *scad2kicad() 
    project() 
      case_top();
  scad2kicad_sides()
    project_aux_side() {
      difference() {
        union() {
          display_together();
          *color("darkgreen") pcb();
          // adjust the detailed connectors to facilitate
          // an accurate 2D projection
          translate([2,0,bottom_h-bottom_lip_h]) header_10P_detailed();
          translate([-2,0,0]) header_aux_detailed();
        }
        translate([-10,0,5])
          cube( [body_xy, body_xy, case_h]+[10,10,10], center=true );
      }
    }
} else if( slice == "usb-side" ) {
  *scad2kicad() 
    project() 
      case_top();
  scad2kicad_sides()
    project_usb_side() 
      display_together();
} else if( slice == "test" ) {
  display_together();
}
