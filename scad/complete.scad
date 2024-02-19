/*
Spoolholder by Sven Minio is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
Based on a work at https://github.com/k37z3r/Spoolholder.
*/
tolerance=0.2;
union(){
    difference(){
        union(){
            difference(){
                cube([30*1.5,30,5],center=true);
                translate([5*2,0,0])cylinder(h=5*2, d=4+tolerance, center=true, $fn=64);
                translate([-(5*2),0,0])cylinder(h=5*2, d=4+tolerance, center=true, $fn=64);
            }
            translate([0,-(30/2-5/2),150/2+5/2])cube([30*1.5,5,150], center=true);
            difference(){
                union(){
                    translate([0,0,150/2+5/2])cube([5,30,150], center=true);
                    translate([-(30-(5*2)),0,150/2+5/2])cube([5,30,150], center=true);
                    translate([(30-(5*2)),0,150/2+5/2])cube([5,30,150], center=true);
                }
            }
        }
        translate([0,30/2+5,150-tolerance+5/2])rotate([asin(5/30),0,0])cube([30*2,30*2,150*2], center=true);
    }
    difference(){
        translate([0,-62.5,130])union(){
            translate([0,2.5,0])difference(){
                union(){
                    rotate([90,0,0])cylinder(h=80, d=40, center=true, $fn=128);
                    translate([0,42.5,0])rotate([90,0,0])cylinder(h=5, d1=45, d2=40, center=true, $fn=128);
                    hull(){
                        translate([0,-42.5,0])rotate([90,0,0])cylinder(h=5, d=40, center=true, $fn=128);
                        translate([0,-48.5,13])scale([2,1,1.5])sphere(d=15, $fn=128);
                    }
                }
                hull(){
                    translate([0,0,7])rotate([90,0,0])cylinder(h=20+tolerance, d=30+tolerance, center=true, $fn=128);
                    translate([0,0,15])rotate([90,0,0])cylinder(h=20+tolerance, d=30+tolerance, center=true, $fn=128);
                }
                hull(){
                    translate([0,25,7])rotate([90,0,0])cylinder(h=20+tolerance, d=30+tolerance, center=true, $fn=128);
                    translate([0,25,15])rotate([90,0,0])cylinder(h=20+tolerance, d=30+tolerance, center=true, $fn=128);
                }
                hull(){
                    translate([0,-25,7])rotate([90,0,0])cylinder(h=20+tolerance, d=30+tolerance, center=true, $fn=128);
                    translate([0,-25,15])rotate([90,0,0])cylinder(h=20+tolerance, d=30+tolerance, center=true, $fn=128);
                }
                hull(){
                    translate([0,0,7])rotate([90,0,0])cylinder(h=80+tolerance, d=7+tolerance, center=true, $fn=128);
                    translate([0,0,20])rotate([90,0,0])cylinder(h=80+tolerance, d=7+tolerance, center=true, $fn=128);
                }
            }
        }
        rotate([asin(5/30),0,0])translate([0,50/2+30/2,(200/2)*0.95])cube([50,50,200], center=true);
    }
}
include <gears.scad>;
clearance = tolerance;
module bearing(){
    rotate([90,0,0])color("red")planetary_gear(modul=1.2, sun_teeth=9, planet_teeth=6, number_planets=5, width=19.5, rim_width=1, bore=7.1, pressure_angle=20, helix_angle=0, together_built=true, optimized=true);
};
translate([0,-65.5-19.5/2,137])bearing();
translate([0,-60+19.5/2,137])bearing();
translate([0,-64.25+19.5*2,137])bearing();
translate([0,-20,137])color("orange")rotate([90,0,0])union(){
    translate([0,0,76.4])sphere(d=7,$fn=128);
    translate([0,0,3.5])cylinder(h=72.9,d=7,$fn=128);
    translate([0,0,3.5])sphere(d=7,$fn=128);
}
