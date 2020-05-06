//
// ktBOX6
//
//


gap1 = 0.001;
gap2 = 0.002;

panel_thick = 2;

X = 100;
Y = 30;
Z = 30;



translate([0, 0, 0]) A();
translate([0, 0, 0]) B();

module A()
{
difference()
{
    union()
    {
        translate([-panel_thick, -panel_thick, -panel_thick]) cube([X+panel_thick, Y+panel_thick*2, Z+panel_thick*2]);
        translate([-panel_thick, Y, -12]) cube([11, panel_thick, 10]);
        translate([X-0.5, Y, (Z/2)-5]) cube([11, panel_thick, 10]);
    }
    translate([gap1, 0, 0]) cube([X, Y, Z]);
    translate([3.5, Y+panel_thick+gap1, -7]) rotate([90, 0, 0]) cylinder( panel_thick+gap2, d1=5, d2=7.5, $fn=100);
    translate([X+5, Y+panel_thick+gap1, Z/2]) rotate([90, 0, 0]) cylinder( panel_thick+gap2, d1=5.5, d2=5.5, $fn=100);
}
}

module B()
{
difference()
{
    union()
    {
        translate([X-4, Y-(Y-10), 1]) cube([15, Y-10, Z-1]);
    }
    translate([X+5, Y-(Y-10)+panel_thick+gap1, Z/2]) rotate([90, 0, 0]) cylinder( panel_thick+gap2, d1=5, d2=7.5, $fn=100);
    translate([X+5, Y-(Y-10)+panel_thick+gap1+40, Z/2]) rotate([90, 0, 0]) cylinder( 50, d1=5, d2=5, $fn=100);
}
}
