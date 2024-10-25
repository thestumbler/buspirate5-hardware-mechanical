# Bus Pirate 5, Mechanical Envelope Drawing

This repo has some scripts to enable semi-automatic preparation of
mechanical envelope drawing of the Bus Pirate 5 enclosure. 

![](images/mech-user2.png)

![](images/mech-user1.png)

## Background

The enclosure is designed in OpenSCAD. Getting 2D dimension drawings out
of OpenSCAD, while possible, is awkward ( see this [repo](
https://github.com/pwpearson/dimensional-drawings.git) for example ).
It is straightforward to make an XY projection or cut of an object. 
And KiCad has basic dimensioning for several versions now. So the
approach taken is

(1) create projections using OpenSCAD design
(2) save as DXF files, import into KiCad
(3) add dimensioning in KiCad

## OpenSCAD Projections

The file `make2d.scad` contains the for projecting the
different views. The code is organized as follows:

* module fiducial()
* module scad2kicad()
* module scad2kicad_sides()
* module project()
* module project_aux_side()
* module project_usb_side()
* // Main Slicing Code...

In summary, this requires the following 
operations (details are in the code):

* X-Y translation
* Mirroring
* Rotation
* Matching origin

This code could be put directly in the SCAD file. But there are several
versions to deal with, and it would be nice to keep this code separate.
The code is substantially independent, although it reaches into the
enclosure file to get the objects needed.

The only problem encountered with this approach is with OpenSCAD
importing of modules.

* If you `include` a file, you pickup all the modules and variables, but
  you also get any objects that are drawn in the main code.

* If you `use` a file, you get all the modules, any objects are not
  drawn, but you don't get the variables.

I don't have a solution for this. What I did was a compromise. I moved
all the parameters in the enclosure design to a file `params.scad`. 
If this is adopted, then all the versions of the enclosure would need to
carve out the variables into separate parameter files.

One other option is to organize the enclosure files so they don't create
any mainline objects without a control flag. This makes is easy to
include the files as-is, and use flags in the user customizer panel. See
`make2d.scad` for an example of this.

## KiCad Import

Importing the DXF files into KiCad is made easy by positioning the XY
projections in OpenSCAD so they match the exact placement of the PCB in
KiCAD. You can just import the files referenced to (0,0) and there is no
need to use interactive placement.

Four new layers are created as follows:

* User1  Bottom XY projection
* User2  Top and Sides projections
* User3  Bottom dimensions
* User4  Top and Sides dimensions

Dimensions are made by hand. 

## Revisions

All these four layers are kept in a separete PCB design `mech`. This
deisng only has four layers, the four user layers. If you make a new
BusPirate revision, you to the `append board` operation to add these to
the design.

If there are changes to the enclosure design, you have to remake the DXF
files and reimport them into KiCad. For most changes, it is easy to 
tweak the dimension layers to match any changes. The shell script
`make2d.sh` creates all four DXF files at once. 

As currently coded, you meed to manually edit the include statement in
make2d.scad (the target file of an include/use cannot be a variable).


# Resources

- [Download the latest firmware build](https://forum.buspirate.com/t/bus-pirate-5-auto-build-main-branch/20/99999)
- [Get help and chat in the forum](https://forum.buspirate.com/)
- [Firmware documentation](https://firmware.buspirate.com/) ([source](https://github.com/DangerousPrototypes/BusPirate5-docs-firmware))
- [Hardware documentation](https://hardware.buspirate.com/) ([source](https://github.com/DangerousPrototypes/BusPirate5-docs-hardware))
- [Hardware repo](https://github.com/DangerousPrototypes/BusPirate5-hardware)
- [Firmware repo](https://github.com/DangerousPrototypes/BusPirate5-firmware)
