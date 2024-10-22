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

// 10P header
// head_10p_x = 11.6;
// head_10p_y = 29.00;
// head_10p_offset=4;
// module header_10P_original(){
//     //10p header
//     translate([(body_xy/2)+eps,0,-eps]){
//         cube(size=[head_10p_x+eps, head_10p_y, top_h+eps+eps], anchor=BOTTOM+RIGHT);
//     }
// }

function in2mm(a) = (a*25.4);
function mil2mm(a) = (a*0.0254);

hx_10p = [ 11.45, 27.88, 5.1 ];
hx_bump = [ 11.45, 7.5,  6.65 ]; // 7.5 dimension is a guess
hx_wall_thk = 0.8;
hx_pin_len = 11; // length of pin inside connector body, guess
hx_pin_hgt = 3.3; // length below bottom of the connector
hx_pin1 = [ 11.8, 0.5*(hx_10p.y - 22.86 ) ];
hx_pitch = 2.54;
hx_posn_x = 1; // offset from board edge
module pin_025sq(pinlen) {
  color("yellow")
  translate([0,0,0.5*pinlen])
    cube([ mil2mm(25), mil2mm(25), pinlen ], center=true );
}
module header_10P_detailed(){
  //10p header HX25418-10WA
  translate([-hx_10p.x+hx_posn_x,-0.5*hx_10p.y, pcb_h])
  translate([(body_xy/2)+eps,0,-eps]){
    color("slategray")
    difference() { 
      union() {
        cube(size=hx_10p);
        translate([0, 0.5*hx_10p.y-0.5*hx_bump.y, 0])
          cube(size=hx_bump);
      }
      translate([hx_wall_thk, hx_wall_thk,hx_wall_thk]) // inner wall
        cube(size=hx_10p-[0,2*hx_wall_thk,2*hx_wall_thk]);
    }
    // pins
    for( i = [ 0 : 9 ]) {
      translate([0, hx_pin1.y + i*hx_pitch, 0.5*hx_10p.z])
      rotate( 90, [ 0, 1, 0 ])
        pin_025sq( hx_pin_len );
      translate([0, hx_pin1.y + i*hx_pitch, +0.5*hx_10p.z+0.5*mil2mm(25)])
        rotate( 180, [ 0, 1, 0 ])
        pin_025sq(0.5*hx_10p.z+hx_pin_hgt);
    }
  }
}

*header_10P_original();
*header_10P_detailed();
