
fid_size = 10;
fid_thk = 1;
fid = [fid_size, fid_size, fid_thk];
fudge = 0.1;

module fiducial(posn=[0,0,0]) {
  translate(posn) {
    translate([+0.5*fid.x, +0.5*fid.y, 0])
      cube( fid, center=true );
    translate([-0.5*fid.x, -0.5*fid.y, 0])
      cube( fid, center=true );
    difference() {
      cylinder(r=fid_size, h=fid_thk, center=true, $fn = 100);
      cylinder(r=fid_size-fid_thk, h=fid_thk+fudge, center=true, $fn = 100);
    }
  }
}

// fiducial([40,10,0]);
