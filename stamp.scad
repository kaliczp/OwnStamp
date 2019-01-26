$fn=50;

platelength = 30;
platewidth = 15;
platethick = .5;

letter_thickness = 1;
szoveg = "Piri";
font_size = 10;

//alap
//translate([0,0,3])
linear_extrude(platethick)
     square([platelength, platewidth], center = true);

// This produces a slope between the face of the letter and
// the base of the rubber stamp.
minkowski(){
    linear_extrude(letter_thickness){
        rotate(180,[0,1,0]){
            text(text=szoveg,
            size=font_size,
            spacing=1.1,
            valign="center",
            halign="center");
        }
    }
    cylinder(r1 = .5, r2 = 0, h = letter_thickness);
}

