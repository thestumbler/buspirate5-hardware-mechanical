include <BOSL2/std.scad>
include <BOSL2/rounding.scad>
include <BOSL2/screws.scad>

include <params.scad>

vf=360;
//version number
version="10"; //version number
version_h=1; //depth of version number pocket

//epsilon value
eps=0.01;

function in2mm(a) = (a*25.4);
function mil2mm(a) = (a*0.0254);

wr_bump = [ 11.45, 7.5,  6.65 ]; // 7.5 dimension is a guess

wr_9p = [ 4.25, 11, 2.9 ];
wr_wall_thk = 0.4;
wr_pin_len = 4; // length of pin inside connector body, guess
wr_pin1 = [ 4.25, 0.5*(wr_9p.y - 8.0 ) ];
wr_pitch = 1.00;
wr_posn_x = 0; // offset from board edge
module pin_02sq(pinlen) { // 0.2mm mm square
  color("yellow")
  translate([0,0,0.5*pinlen])
    cube([ 0.2, 0.2, pinlen ], center=true );
}
module header_aux_detailed(){
  translate([-wr_9p.x+wr_posn_x,-0.5*wr_9p.y, -wr_9p.z - pcb_h])
  translate([(body_xy/2)+eps, 0, bottom_h+eps]) {
  color("slategray")
    difference() { 
      cube(size=wr_9p);
      translate([wr_wall_thk, wr_wall_thk,wr_wall_thk]) // inner wall
        cube(size=wr_9p-[0,2*wr_wall_thk,2*wr_wall_thk]);
    }
    // pins
    for( i = [ 0 : 8 ]) {
      translate([0, wr_pin1.y + i*wr_pitch, 0.35*wr_9p.z])
      rotate( 90, [ 0, 1, 0 ])
        pin_02sq( wr_pin_len );
    }
  }
}

//9p aux la header hole
// head_aux_x=wall_width;
// head_aux_y=12.8;
// head_aux_h=4.8;
module header_aux_original(){
    translate([(body_xy/2)+eps, 0, bottom_h+eps]){
        cube(size=[head_aux_x+eps+eps,head_aux_y,head_aux_h], anchor=TOP+RIGHT);
    }   
}

*header_aux_original();
*header_aux_detailed();
