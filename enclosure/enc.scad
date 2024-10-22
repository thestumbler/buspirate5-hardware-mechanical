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

use <hx10p.scad>

//
// CASE TOP MODULES
//
module body_top(){
    //case body
    diff(){
        cube(size=[body_xy, body_xy,top_h], anchor=BOTTOM){
            //top chamfer
            chamfer_list=[RIGHT, LEFT, BACK, FRONT];
            for( i = chamfer_list){
            edge_mask(TOP+i)
                chamfer_edge_mask(l=body_xy, chamfer=chamfer_top_h);
            }                        
        }    
    }
}

module cavity_top(){    
    //PCB area in top
    translate([0,0,-eps]){
        cube(size=[top_cavity_xy, top_cavity_xy, pcb_h+eps], anchor=BOTTOM);
    }
}

module lcd(){
    //LCD
    lcd_va_chamfer_eps_h=lcd_va_chamfer_h+eps+eps;
    translate([0,0,pcb_h]){
        union(){
            //body
            translate([0,0,-eps]){
                cube(size=[lcd_x, lcd_y, lcd_h+eps], anchor=BOTTOM);
            }
            //view area base (0.4=2 layers)
             translate([0, lcd_va_offset_y, lcd_h-eps]){
                 cube(size=[lcd_va_x, lcd_va_y, lcd_va_base_h+eps], anchor=BOTTOM);
            }           
            //view area chamfer, 45 degrees
            translate([0, lcd_va_offset_y, (lcd_h+lcd_va_base_h)-eps]){
                prismoid(size1=[lcd_va_x, lcd_va_y], size2=[lcd_va_x+(lcd_va_chamfer_eps_h*2), lcd_va_y+(lcd_va_chamfer_eps_h*2)], h=lcd_va_chamfer_eps_h);
            }
        }
    }
}

module screws(){
    //screw holes
    for(a=[1:-2:-1]){
        for(b=[1:-2:-1]){
             translate([a*((pcb_xy/2)-screw_offset_xy),b*((pcb_xy/2)-screw_offset_xy),0]){
                union(){
                    //shaft
                    translate([0,0,-eps]){
                        cylinder(h=(top_h-screw_head_h)+eps, d=screw_d, anchor=BOTTOM, $fn=100);
                    }
                    //countersink
                    translate([0,0,top_h-screw_head_h-eps]){
                        cylinder(h = screw_head_h+eps+eps, d1 = screw_head_d1, d2 = screw_head_d2, anchor=BOTTOM, $fn=100);
                    }
                }
            }
        }
    }
}

module buttons(){
     //buttons
    translate([-((pcb_xy/2)-butt_offset_x), 0,pcb_h]){
        union(){
            //button body
            translate([0,0,-eps]){
                cube(size=[butt_body_x, butt_body_y, butt_body_cavity_h+eps], anchor=BOTTOM);
            }
            //button holes
            if(0){
            //for(a=[-1:1:1]){
                translate([ 0, butt_spread_y*a, butt_body_cavity_h]){
                    union(){
                        translate([0,0,-eps]){
                            cylinder(h=butt_hole_h+eps , d=butt_hole_d, anchor=BOTTOM, $fn=100);  
                        }
                        translate([0,0,butt_hole_h-eps]){
                            cylinder(h = butt_sink_h+eps+eps, d1 = butt_sink_d1, d2 = butt_sink_d2, anchor=BOTTOM, $fn=100);
                        }                         
                    }
                }
            //}
            }
        }
    }

    butt_cap_extra_clear_d=[0,butt_cap_center_extra_space_d,0];
    //button holes for caps
    //for(a=[-1:1:1]){
        a=0;
        translate([ -((pcb_xy/2)-butt_offset_x), butt_spread_y*a, pcb_h+butt_body_cavity_h-eps]){
            translate([0,0,-eps]){
                cylinder(h = butt_cap_rim_cavity_h + eps, d =(butt_cap_rim_d + butt_cap_extra_clear_d[a+1]), anchor=BOTTOM, $fn=100);
            }
            translate([0,0,butt_cap_rim_cavity_h-eps]){
                cylinder(h = butt_cap_h+eps, d = butt_cap_d + butt_cap_extra_clear_d[a+1], anchor=BOTTOM, $fn=100);
            }  
        }
    //}       
}

module header_10P(){
    //10p header
    translate([(body_xy/2)+eps,0,-eps]){
        cube(size=[head_10p_x+eps, head_10p_y, top_h+eps+eps], anchor=BOTTOM+RIGHT);
    }
}


module header_prog_top(){
    //programming header cutout
    translate([-1*((pcb_xy/2)-head_prog_offset_x),-1*((pcb_xy/2)-head_prog_offset_y),pcb_h-eps]){
        cube(size=[head_prog_x,head_prog_y,head_prog_bottom_h+eps], anchor=BOTTOM);
    }
}                                                       

//
// CASE BOTTOM MODULES
//
module body_bottom(){
    //bottom and chamfers
    diff(){
        cube(size=[body_xy, body_xy,bottom_h], anchor=BOTTOM){
            //bottom chamfer
            chamfer_list=[RIGHT, LEFT, BACK, FRONT];
            for( i = chamfer_list){
            edge_mask(BOTTOM+i)
                chamfer_edge_mask(l=body_xy, chamfer=chamfer_bottom_h);
            }                
        }   
    } 
} 

module pcb(){
    //PCB
    translate([0,0,(standoff_h+floor_h)]){
        cube(size=[pcb_cavity_xy, pcb_cavity_xy, pcb_h+eps], anchor=BOTTOM);
    }
}

module standoffs(){
    //standoffs
    standoff_edge = pcb_cavity_xy - (standoff_cut*2);
    shape = [[0,standoff_cut], [0,standoff_cut+standoff_edge], [standoff_cut,standoff_cut+standoff_edge], //left
            [standoff_cut,standoff_cut+standoff_edge+standoff_cut], [standoff_cut+standoff_edge, standoff_cut+standoff_edge+standoff_cut], [standoff_cut+standoff_edge, standoff_edge+standoff_cut], //top
            [standoff_cut+standoff_edge+standoff_cut, standoff_edge+standoff_cut], [standoff_cut+standoff_edge+standoff_cut,standoff_cut], [standoff_cut+standoff_edge,standoff_cut], //right
            [standoff_cut+standoff_edge,0], [standoff_cut,0], [standoff_cut,standoff_cut]]; //bottom
    radii = [0, 0, standoff_d, 0, 0, standoff_d, 0, 0, standoff_d, 0, 0, standoff_d];
    translate([-pcb_cavity_xy/2, -pcb_cavity_xy/2, floor_h]){
        linear_extrude(height=standoff_h+eps){
            polygon(round_corners(shape, radius = radii,$fn=64));
        }
    }  
}

module bottom_nuts(){
    //screw holes
    for(a=[1:-2:-1]){
        for(b=[1:-2:-1]){
           translate([a*((pcb_xy/2)-screw_offset_xy),b*((pcb_xy/2)-screw_offset_xy),heatset_nut_max_h-heatset_nut_h]){
                cylinder(h=heatset_nut_h+heatset_nut_bottom_clearance_h+eps, d=screw_d, anchor=BOTTOM, $fn=100);
           }

            translate([a*((pcb_xy/2)-screw_offset_xy),b*((pcb_xy/2)-screw_offset_xy),-eps]){
                cylinder(r=3.4, h=3.2+eps, $fn=6, anchor=BOTTOM);
            }
        }
    }    

   
}

module heatset_nuts_old(){
    //screw holes
    for(a=[1:-2:-1]){
        for(b=[1:-2:-1]){
            translate([a*((pcb_xy/2)-screw_offset_xy),b*((pcb_xy/2)-screw_offset_xy),heatset_nut_max_h-heatset_nut_h]){
                cylinder(h=heatset_nut_h+heatset_nut_bottom_clearance_h+eps, d=heatset_nut_d, anchor=BOTTOM, $fn=100);
                cylinder(r=3.4, h=5, $fn=6, anchor=BOTTOM);
            }
        }
    }    

   
}


module old_sd_card(){
    //sd card
    translate([-((body_xy/2)-sd_offset_x),-1*((body_xy/2)+eps),bottom_h+eps]){
        #cube(size=[sd_x,sd_y+eps+eps+eps,sd_h+eps], anchor=TOP+FRONT+LEFT);
    }    
}

module sd_card(){
    //la aux header
    //0.8mm straight (2 print beads)
    //rest chamfered (wall_width-0.8)

        //sd card
    translate([-((pcb_xy/2)-sd_offset_x),-1*((body_xy/2)-wall_width-eps),bottom_h+eps]){
        cube(size=[sd_x,0.8+eps+eps+eps,sd_h+eps], anchor=TOP+BACK+LEFT);
    }   

    translate([-((pcb_xy/2)-sd_offset_x), -1*((body_xy/2)-wall_width+0.8-eps), bottom_h-pcb_h]){
    rotate(a=[90,0,0]){        
        prismoid(size1=[sd_x,sd_h], size2=[sd_x+((wall_width-0.8)/2),sd_h+((wall_width-0.8)/2)], h=wall_width-0.8+eps+eps, anchor=BOTTOM+LEFT);
    }

    }
}

module header_aux(){
    //la aux header
    //0.8mm straight (2 print beads)
    //rest chamfered (wall_width-0.8)

   /* translate([(body_xy/2)-wall_width-eps, 0, bottom_h-pcb_h-head_aux_x]){
        cube(size=[0.8+eps+eps+eps,head_aux_y,case_h], anchor=BOTTOM+LEFT);
     }

    translate([(body_xy/2)-eps-(wall_width-.8), 0, bottom_h-pcb_h]){
    rotate(a=[0,90,0]){        
        prismoid(size1=[head_aux_x,head_aux_y], size2=[head_aux_x+((wall_width-0.8)/2),head_aux_y+((wall_width-0.8)/2)], h=wall_width-0.8+eps+eps, anchor=BOTTOM+LEFT);
    }

    }*/

    translate([(body_xy/2)+eps, 0, bottom_h+eps]){
        cube(size=[head_aux_x+eps+eps,head_aux_y,head_aux_h], anchor=TOP+RIGHT);
    }   


}

module usb_bottom(){

    typec_d=3.16;
    typec_l=8.94;
    
    translate([-((body_xy/2)-wall_width-eps),0,bottom_h-pcb_h]){
        //inspired/informed by:
        //Object Name: Holder For TYPE-C or LIGHTNING and TRRS (e.g. Earphone Wraps) (OpenSCAD)
        //Author: Brian Khuu 2019
        //https://www.thingiverse.com/thing:3666075/files
        hull(){
            translate([0,((typec_l+0.5)-(typec_d))/2,0]){
                rotate(a=[0,90,0]) cylinder(d=typec_d, h=wall_width+eps+eps, $fn=100, anchor=TOP+LEFT);
            }
            translate([0,-((typec_l+0.5)-(typec_d))/2,0]){
                rotate(a=[0,90,0]) cylinder(d=typec_d, h=wall_width+eps+eps, $fn=100, anchor=TOP+LEFT);
            }
        }       
    }   

    //cut out the overhang, plus X layers of upper cutout curve for cleaner prints
    translate([-((body_xy/2)+eps),0,(bottom_h-pcb_h-(print_layer_h*usb_cut_layers)-eps)]){
        cube(size=[wall_width+eps+eps,((typec_l+0.5)-(typec_d))+2,usb_h], anchor=BOTTOM+LEFT);
    }      
    
}

module header_prog_bottom(){
    //programming header cutout
    head_prog_eps_h=head_prog_top_h+eps+eps;

    union(){

    translate([-1*((pcb_xy/2)-head_prog_offset_x),-1*((pcb_xy/2)-head_prog_offset_y),-eps]){
        cube(size=[head_prog_x,head_prog_y,head_prog_eps_h], anchor=BOTTOM);
    }   

    translate([-1*((pcb_xy/2)-head_prog_offset_x),-1*((pcb_xy/2)-head_prog_offset_y),-eps]){
        //cube(size=[head_prog_x,head_prog_y,head_prog_top_h+eps+eps], anchor=BOTTOM);
        prismoid(size2=[head_prog_x, head_prog_y], size1=[head_prog_x+(0.4*2)+eps, head_prog_y+(0.4*2)+eps], h=0.4);
    }   

    }
  
}

module bootloader_button(){
    //bootloader button hole
    bootload_eps_h=bootload_h+eps+eps;
    union(){
     
     translate([-1*((pcb_xy/2)-bootload_offset_x),((pcb_xy/2)-bootload_offset_y),-eps]){
        cube(size=[bootload_x,bootload_y,bootload_eps_h], anchor=BOTTOM, spin=bootload_spin);
    }       
     
     translate([-1*((pcb_xy/2)-bootload_offset_x),((pcb_xy/2)-bootload_offset_y),-eps]){
        //cube(size=[bootload_x,bootload_y,bootload_h+eps+eps], anchor=BOTTOM, spin=bootload_spin);
        prismoid(size2=[bootload_x,bootload_y], size1=[bootload_x+((bootload_eps_h-.8)*2), bootload_y+((bootload_eps_h-.8)*2)], h=bootload_eps_h-.8, spin=bootload_spin);
    }      
    }
}
    
module bottom_lip(){
    //mating edge lips
    translate([0,0,bottom_h+eps]){
        difference(){
            cube(size=[body_xy+eps, body_xy+eps, bottom_lip_h+eps], anchor=TOP);
            cube(size=[body_xy-(2*bottom_lip_width), body_xy-(2*bottom_lip_width),bottom_lip_h+eps], anchor=TOP);
        }
    } 

}

//
// CASE ASSEMBLY
//
module version_number(){
    linear_extrude(version_h){
        text(text=str("v",version), size=4, font = "Liberation Sans:style=Bold");
    }
}
module case_top(){
    difference(){
        body_top();
        cavity_top();
        lcd();
        screws();
        buttons();
        header_10P();
        header_prog_top();

        //add version number
        rotate([0,180,0]){
            translate([0, -31, -(version_h+(pcb_h-eps))]){
                //version_number();
            }
        }

    }            

}

module case_bottom(){
    difference(){
        body_bottom();
        pcb();
        standoffs();
        bottom_nuts();
        //sd_card();
        header_aux();
        usb_bottom();
        header_prog_bottom();
        bootloader_button();
        bottom_lip();

        //add version number
        translate([0, -30, (floor_h+eps)-version_h]){
            //version_number();
        }        
    }

    translate([(body_xy/2)-wall_width,0,0]){
        difference(){

            //12.4
            cube([2, head_aux_y+1.4, bottom_h-pcb_h], anchor=BOTTOM+RIGHT);
            translate([eps,0,0]) cube([4+eps+eps,11.4,bottom_h-pcb_h+eps], anchor=BOTTOM+RIGHT);
        }
    }
}

//
// CASE DISPLAY
//
module print_3d(){
    translate([(body_xy/2)+2,0,top_h]){
        rotate([180,0,0]){
            case_top();
        }
    }
    translate([-((body_xy/2)+2),0,0]){
        case_bottom();
    }
}

module display_together(explode=0){
    translate([0,0,bottom_h-bottom_lip_h+explode]){
      case_top();
    }
    case_bottom();
}


//print_3d();
//case_top();
//case_bottom();
//display_together();

