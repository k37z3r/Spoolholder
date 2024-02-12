/*
Spoolholder by Sven Minio is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
Based on a work at https://github.com/k37z3r/Spoolholder.
*/
tolerance=0.1;
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
    translate([0,-62.5,130])
    union(){
        difference(){
            hull(){
                translate([0,42.5,0])rotate([90,0,0])cylinder(h=5, d=30, center=true, $fn=128);
                translate([0,50,0])rotate([90,0,0])cylinder(h=5, d=30*1.5, center=true, $fn=128);
            }
            hull(){
                translate([0,0,7.5])rotate([90,0,0])cylinder(h=80+tolerance, d=10+tolerance, center=true, $fn=128);
                translate([0,0,20])rotate([90,0,0])cylinder(h=80+tolerance, d=10+tolerance, center=true, $fn=128);
            }
        }
        difference(){
            hull(){
                translate([0,-42.5,0])rotate([90,0,0])cylinder(h=5, d=30, center=true, $fn=128);
                translate([0,-50,0])rotate([90,0,0])cylinder(h=5, d=30*1.333, center=true, $fn=128);
            }
            hull(){
                translate([0,0,7.5])rotate([90,0,0])cylinder(h=80+tolerance, d=10+tolerance, center=true, $fn=128);
                translate([0,0,20])rotate([90,0,0])cylinder(h=80+tolerance, d=10+tolerance, center=true, $fn=128);
            }
        }
        difference(){
            rotate([90,0,0])cylinder(h=80, d=30, center=true, $fn=128);
            hull(){
                translate([0,0,7.5])rotate([90,0,0])cylinder(h=20+0.2, d=25+tolerance, center=true, $fn=128);
                translate([0,0,15])rotate([90,0,0])cylinder(h=20+tolerance, d=25+tolerance, center=true, $fn=128);
            }
            hull(){
                translate([0,25,7.5])rotate([90,0,0])cylinder(h=20+tolerance, d=25+tolerance, center=true, $fn=128);
                translate([0,25,15])rotate([90,0,0])cylinder(h=20+tolerance, d=25+tolerance, center=true, $fn=128);
            }
            hull(){
                translate([0,-25,7.5])rotate([90,0,0])cylinder(h=20+tolerance, d=25+tolerance, center=true, $fn=128);
                translate([0,-25,15])rotate([90,0,0])cylinder(h=20+tolerance, d=25+tolerance, center=true, $fn=128);
            }
            hull(){
                translate([0,0,7.5])rotate([90,0,0])cylinder(h=80+tolerance, d=10+tolerance, center=true, $fn=128);
                translate([0,0,20])rotate([90,0,0])cylinder(h=80+tolerance, d=10+tolerance, center=true, $fn=128);
            }
        }
    }
    rotate([asin(5/30),0,0])translate([0,50/2+30/2,(200/2)*0.95])cube([50,50,200], center=true);
}