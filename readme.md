# Bus Pirate 5, Mechanical Envelope Drawing

This repo has some scripts to enable semi-automatic preparation of
mechanical envelope drawing of the Bus Pirate 5 enclosure. 

## Background

The enclosure is designed in OpenSCAD. Getting 2D dimension drawings out
of OpenSCAD, while possible, is awkward ( see this [repo](
https://github.com/pwpearson/dimensional-drawings.git) for example ).
It is straightforward to make an XY projection or cut of an object. 
And KiCad has basic dimensioning for several versions now. So the
approach taken is

(1) use the existing OpenSCAD design to create the projections
(2) save them as DXF files
(3) import the DXF files into KiCad
(4) add dimensioning in KiCad

## OpenSCAD Projections

## KiCad Import

## Revisions





# Resources

- [Download the latest firmware build](https://forum.buspirate.com/t/bus-pirate-5-auto-build-main-branch/20/99999)
- [Get help and chat in the forum](https://forum.buspirate.com/)
- [Firmware documentation](https://firmware.buspirate.com/) ([source](https://github.com/DangerousPrototypes/BusPirate5-docs-firmware))
- [Hardware documentation](https://hardware.buspirate.com/) ([source](https://github.com/DangerousPrototypes/BusPirate5-docs-hardware))
- [Hardware repo](https://github.com/DangerousPrototypes/BusPirate5-hardware)
- [Firmware repo](https://github.com/DangerousPrototypes/BusPirate5-firmware)
