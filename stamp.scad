$fn=50;

platelength = 50;
platewidth = 25;
platethick = 1;

letter_thickness = 2.0;
szoveg = "Filó";
font_size = 20;

//alap
translate([0,0,3])
linear_extrude(platethick)
     square([platelength, platewidth], center = true);

// This produces a slope between the face of the letter and
// the base of the rubber stamp.
minkowski(){
    linear_extrude(letter_thickness){
        text(text=szoveg,
        size=font_size,
        spacing=1.1,
        valign="center",
        halign="center");
    }
    cylinder(r1 = 0, r2 = 0.5, h = letter_thickness);
}

