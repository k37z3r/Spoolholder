/*
Spoolholder by Sven Minio is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
Based on a work at https://github.com/k37z3r/Spoolholder.
*/
tolerance=0.1;
include <getriebe.scad>;
spiel = tolerance;
planetengetriebe(modul=0.85, zahnzahl_sonne=15, zahnzahl_planet=5, hoehe=19.5, randbreite=0.75, bohrung=10+tolerance, eingriffswinkel=20, schraegungswinkel=15);