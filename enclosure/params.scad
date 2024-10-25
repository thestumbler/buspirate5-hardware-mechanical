

//epsilon value
eps=0.01;

//CASE BODY
//case stackup
echo("----------CASE----------");
face_h = 1.4;
lcd_h = 2.2;
pcb_h = 1.6;
standoff_h = 3.4;
floor_h = 1.4; //was 1.6... //was 2.4

top_h = face_h+lcd_h+pcb_h;
bottom_h = pcb_h+standoff_h+floor_h;
case_h=face_h+lcd_h+pcb_h+standoff_h+floor_h;
echo(top_h=top_h, bottom_h=bottom_h, case_h=case_h);

standoff_cut = 8.4; //length of the standoff arm excluding the rounded bit
standoff_d = 3; //diameter of standoff rounded bit

//mating walls
wall_inner_xy = 0.8; //inner wall thickness EACH side
wall_gap_xy=0.6; //was 0.6, but changed to one extruder width //gap between walls EACH side
wall_outer_xy=0.8; //outer wall thickness
wall_width=wall_inner_xy+wall_gap_xy+wall_outer_xy;
echo(wall_width=wall_width);

//pcb dimentions and tolerance
pcb_xy = 60;
pcb_tolerance_xy = 0.4; //spacing on EACH side
pcb_cavity_xy=(pcb_tolerance_xy*2)+pcb_xy; //bottom half PCB cavity
top_cavity_xy=pcb_cavity_xy+(wall_gap_xy*2)+(wall_inner_xy*2); //pcb+innerwall cavity in top
echo(pcb_cavity_xy=pcb_cavity_xy, top_cavity_xy=top_cavity_xy);

//full outer case dimentions
body_xy=(wall_outer_xy*2)+(wall_gap_xy*2)+(wall_inner_xy*2)+pcb_cavity_xy;
echo(body_xy=body_xy);

//edge chamfers, top and bottom
chamfer_top_h=2.4;
chamfer_bottom_h=1.4;

//TOP CASE FEATURES
//LCD body
lcd_x=34.6 + 2; //36.8;
lcd_y=47.8 + 2; //52.2;
//LCD viewable area
lcd_va_x=33.6 - 1; //32.4; 
lcd_va_y=43.6 - 1; //42.8;
lcd_va_base_h = 0.4; //two layers of material without chamfer on top of lcd
lcd_va_chamfer_h = face_h - lcd_va_base_h; //the chamfered "view port"
lcd_va_offset_y = 1.8 + (1/2); //from top of LCD body to top of viewable area

//10P header
head_10p_x = 11.6;
head_10p_y = 29.00;
head_10p_offset=4;

echo("------PROGRAMMING HEADER-------");
//cut in bottom of top half to accomidate the ends/solder of the programming header on the bottom layer
head_prog_x = 2.54+.4;
head_prog_y=(2.54*3)+0.55;
head_prog_bottom_h=lcd_h;  //bottom of header (top of PCB, top of case)
head_prog_top_h=floor_h;
head_prog_offset_x=10.75;
head_prog_offset_y=9.6;//9.6
head_prog_connector_max_h=floor_h+standoff_h;
echo(head_prog_connector_max_h=head_prog_connector_max_h);

//from datasheet for milled, low profile pin header
head_prog_connector_total_h=7.43;
head_prog_connector_pin_h=2.7;
head_prog_connector_body_h= head_prog_connector_total_h-head_prog_connector_pin_h;
head_prog_connector_clearance_h=head_prog_connector_max_h-head_prog_connector_body_h;
echo(head_prog_connector_body_h=head_prog_connector_body_h, head_prog_connector_clearance_h=head_prog_connector_clearance_h );

//mounting screws
echo("----------SCREWS----------");
screw_d=3.4;
screw_offset_xy=4;
screw_head_h=1.7;
screw_head_d1=screw_d;
screw_head_d2=6.2;
heatset_nut_d=4.4; //4.3/3.9;
heatset_nut_max_h=floor_h+standoff_h;
screw_distance_to_nut_h=top_h;
echo(screw_distance_to_nut_h=screw_distance_to_nut_h);

screw_h=8;
screw_depth_nut_h=screw_h-screw_distance_to_nut_h;
echo(screw_h=screw_h, screw_depth_nut_h=screw_depth_nut_h);

echo("----------NUTS----------");
heatset_nut_h=3;
heatset_nut_bottom_clearance_h=.8; //how much deeper should the hole be than the nut? effects minimum floor thickness
heatset_nut_unused_h=heatset_nut_h-screw_depth_nut_h;
echo(heatset_nut_max_h=heatset_nut_max_h);
echo(heatset_nut_h=heatset_nut_h,heatset_nut_unused_h=heatset_nut_unused_h);

//push buttons (with countersink)  
//assumes center button is at Y=0 (centered)  
echo("--------USER BUTTONS--------");
button_distance_to_top=face_h+lcd_h;
echo(button_distance_to_top=button_distance_to_top);

//button body cutout
butt_body_x=9.2;
butt_body_y=28; 
butt_body_h=1.5;
butt_body_cavity_h=0.8; 
echo(butt_body_cavity_h=butt_body_cavity_h);

//This is stack up for short buttons with button caps
butt_cap_h=4;
butt_cap_d=5+.4;
butt_cap_rim_h=1; 
butt_cap_rim_d=6.8+.4;
butt_cap_center_extra_space_d=0.2; //for some reason our printer makes the center hole slightly too tight, so we add some space
//This is the 1mm cap rim + 0.7 of the button body height +0.1 (even layer height)
//(to keep cap rim being stuck under the case)
butt_cap_rim_cavity_h=butt_cap_rim_h+(butt_body_h-butt_body_cavity_h)+.1;
echo(butt_cap_rim_cavity_h=butt_cap_rim_cavity_h);
butt_cap_shaft_h=button_distance_to_top-butt_body_cavity_h-butt_cap_rim_cavity_h;
echo(butt_cap_shaft_h=butt_cap_shaft_h);

//This is stack up with long shaft button
//counter sink 
butt_sink_h=1.7; 
butt_sink_d1=3.2;
butt_sink_d2=6.2;
//button hole
butt_offset_x=7.2; //edge of pcb to center of button
butt_spread_y=10; //center of center button to center of top and bottom buttons
butt_hole_d=3.2;
butt_hole_h=top_h-(pcb_h+butt_body_h+butt_sink_h);





//BOTTOM CASE FEATURES
//retaining lip for the case
bottom_lip_width=wall_gap_xy+wall_outer_xy;
bottom_lip_h=pcb_h;

//sd card hole
sd_x=14;
sd_y=wall_width;
sd_offset_x=22;
sd_h=3.4;

//9p aux la header hole
head_aux_x=wall_width;
head_aux_y=12.8;
head_aux_h=4.8;

//USB C hole (currently blown out)
usb_x=wall_width;
usb_y=14; //blow out
usb_h=5.6; //blow out, 3.2;
print_layer_h=0.2;
usb_cut_layers=2;

//bootloader button hole
bootload_x=3;
bootload_y=4;
bootload_h=floor_h;
bootload_offset_x=27; //from top of flipped PCB
bootload_offset_y=14;    //from right of flipped PCB
bootload_spin=45;
echo("----------END----------");
