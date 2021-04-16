// In this design, the illuminated buttons are inserted from the front of the panel and are held without nuts.
// This means the fit of the holes needs to be fairly snug. If you have different illuminated momentary buttons
// you'll need to tweak the radii in ledMomRad, bbRadius and momRad.

// Large momentary trigger buttons are Shin Chin (SCI) R13-523A (R13-523A-05-BR, Mouser code: 112-R13-523A-05-BR).
// Split/twin momentary button is Shin Chin (SCI) R13-548A (R13-548AL-05-BRR, Mouser code: 112-R13-548AL-BRR)

// Mode toggle momentary button has a ~6mm diameter metal thread with nut (similar to Philips PBS-110, or maybe Shin Chin R13-24A).
// LEDs are standard 5mm diameter LEDs.
// Sockets are standard threaded 3.5mm mono jacks with nuts.
// Pots are Alps-style (RK09) metal threaded with nuts.

// TODO: Mounting bracket for M3 screw is too weak, needs be thicker at the base where it joins the panel

$fn = 24;

panelThickness = 2;
panelHp = 10;  // 10HP is actually 50.50 based on http://www.doepfer.de/a100_man/a100m_e.htm
holeCount = 2;
holeWidth = 7.08; //If you want wider holes for easier mounting. Otherwise set to any number lower than mountHoleDiameter. Can be passed in as parameter to eurorackPanel()

threeUHeight = 133.35; //overall 3u height
panelOuterHeight = 128.5;
panelInnerHeight = 110; //rail clearance = ~11.675mm, top and bottom
railHeight = (threeUHeight-panelOuterHeight)/2;
mountSurfaceHeight = (panelOuterHeight-panelInnerHeight-railHeight*2)/2;

// Start and end coordinates of PCB top/bottom edges
innerStartY = 0 + ((panelOuterHeight - panelInnerHeight)/2);
innerEndY = panelOuterHeight - ((panelOuterHeight - panelInnerHeight)/2);

echo("mountSurfaceHeight", mountSurfaceHeight);

hp=5.08;
// This is a 'naive' width - based on based on http://www.doepfer.de/a100_man/a100m_e.htm,
// Doepfer panel widths have some tolerances/rounding in values.
// 
// panelWidth=panelHp*hp;
panelWidth=50.50; // 10HP

// R13-548A
ledMomRad = (8.5 + 1.6)/2;  // snug + tolerance/slope (snap fit)   // (8.5 + 1)/2 too tight // (10+1)/2 far too loose // (8.5 + 2)/2 slightly loose
momRad = (6.5 + 1)/2;  // snug + tolerance, secured with nut      // good fit

// R13-523A - these are snap fit buttons, so we should get a snug fit even with a bit of slop
bbRadius=(15.5 + 1.4)/2; // snug + tolerance/slop  //(15.5 + 1)/2 too tight // (17.5+1)/2 far too loose  // (15.5 + 2)/2 a bit loose

// plastic 9mm Alpha-style RK09 vertical pots, snug fit, no nut
// potRadius==6.45/2;

// metal alpha pot (knurled) - loose fit for attaching with nut
potRadius=7.8/2;  // 7/2 too tight  // 8.2/2 a bit loose

potHoleSpacing=17.8;

// snug fit 3.5mm jack, secured with nut
socketRadius=6.5/2;  // good fit

ledHoleWidth = 5.3; // 5.3 tight fit, won't fall out // 5.1 too tight  // 5.5 fits but slightly loose

mountHoleDiameter = 3.2;
mountHoleRad = mountHoleDiameter/2;
hwCubeWidth = holeWidth-mountHoleDiameter;
mountholeXOffset=1;

offsetToMountHoleCenterY = mountSurfaceHeight/2;
offsetToMountHoleCenterX = hp - hwCubeWidth/2; // 1 hp from side to center of hole

// reinforcementDepth=2.8;  // needs to be short enough to clear base of potentiometer
reinforcementDepth=2;  // MIDI sockets need a fair amount of force to insert, so we need extra reinforcment

m3_screwhole_d=2.95; // should engage screw thread

echo(offsetToMountHoleCenterY);
echo(offsetToMountHoleCenterX);

// TODO: This is too weak, needs be thicker at the base where it joins the panel
module mountingBracket() {
    xOffset=28;
    yOffset=panelOuterHeight-30;
    bracketLength=9.3;
    bracketThickness=2;
    pcbThickness=2;
    holeOffset=6.4;  // 5.6 too short
    holeR=(m3_screwhole_d+0.2)/2;
    

    difference() {
        union()
        {
            translate([xOffset-bracketThickness-0.5, yOffset, -bracketLength]) {
                cube([bracketThickness, m3_screwhole_d+2, bracketLength]);
            }
            translate([xOffset+bracketThickness+0.5, yOffset, -bracketLength]) {
                cube([bracketThickness, m3_screwhole_d+2, bracketLength]);
            }
        }
        translate([xOffset+1, yOffset+holeR+1, -holeOffset]) {
            rotate([90,0,90]) cylinder(r=holeR, h=(bracketThickness*2)+pcbThickness+2, center=true, $fn=20);
        }
    }
}

module momButtonHoles() {    
    union()
    {
        translate([15, (potHoleSpacing*1), -reinforcementDepth-2]) {
            cylinder(r=ledMomRad, h=reinforcementDepth+5, $fn=20);
        }
        translate([15, (potHoleSpacing*2), -reinforcementDepth-2]) {
            cylinder(r=momRad, h=reinforcementDepth+5, $fn=20);
        }
    }
}

module bigButtonHoles() {
    union()
    {
        translate([15, 74, -reinforcementDepth-2]) {
            cylinder(r=bbRadius, h=reinforcementDepth+5, $fn=20);
        }
        translate([15, 94, -reinforcementDepth-2]) {
            cylinder(r=bbRadius, h=reinforcementDepth+5, $fn=20);
        }
    }
}

module socketHoles(socketRadius) {
    
    union()
    {
        translate([20-10, 74-18, -reinforcementDepth-2]) {
            cylinder(r=socketRadius, h=reinforcementDepth+5, $fn=20);
        }
        translate([20, 74-18, -reinforcementDepth-2]) {
            cylinder(r=socketRadius, h=reinforcementDepth+5, $fn=20);
        }
        translate([20-10, 112, -reinforcementDepth-2]) {
            cylinder(r=socketRadius, h=reinforcementDepth+5, $fn=20);
        }
        translate([20, 112, -reinforcementDepth-2]) {
            cylinder(r=socketRadius, h=reinforcementDepth+5, $fn=20);
        }
    }
}

// specific set of 2HP central 9mm vertical pot holes holes
module potHoles(pw, potRadius) {
    xOff=pw-13.5;
    
    union()
    {
        translate([xOff, (potHoleSpacing*1), -reinforcementDepth-2]) {
            cylinder(r=potRadius, h=reinforcementDepth+5, $fn=20);
        }
        translate([xOff, (potHoleSpacing*2), -reinforcementDepth-2]) { 
            cylinder(r=potRadius, h=reinforcementDepth+5, $fn=20);
        }
        translate([xOff, (potHoleSpacing*3), -reinforcementDepth-2]) { 
            cylinder(r=potRadius, h=reinforcementDepth+5, $fn=20);
        }
        translate([xOff, (potHoleSpacing*4), -reinforcementDepth-2]) {
            cylinder(r=potRadius, h=reinforcementDepth+5, $fn=20);
        }
    }
}

module ledHoles(pw) {
    xOff=pw-13.5;
    startY=89.2;
    union()
    {
        translate([xOff, startY, -reinforcementDepth-2]) {
            cylinder(r=ledHoleWidth/2, h=reinforcementDepth+5, $fn=20);
        }
        translate([xOff, startY + (3*2.54), -reinforcementDepth-2]) {
            cylinder(r=ledHoleWidth/2, h=reinforcementDepth+5, $fn=20);
        }
        translate([xOff, startY + (6*2.54), -reinforcementDepth-2]) {
            cylinder(r=ledHoleWidth/2, h=reinforcementDepth+5, $fn=20);
        }
        translate([xOff, startY + (9*2.54), -reinforcementDepth-2]) {
            cylinder(r=ledHoleWidth/2, h=reinforcementDepth+5, $fn=20);
        }
    }
}

module reinforcement() {
    union() {
        translate([panelThickness/2,                  22, -reinforcementDepth]) cube([panelThickness,panelInnerHeight/3,reinforcementDepth]);
        translate([panelWidth-(panelThickness*1.5), 22, -reinforcementDepth]) cube([panelThickness,panelInnerHeight/3,reinforcementDepth]);
        translate([panelThickness/2,                  50, -reinforcementDepth]) cube([panelThickness,panelInnerHeight/2,reinforcementDepth]);
        translate([panelWidth-(panelThickness*1.5), 50, -reinforcementDepth]) cube([panelThickness,panelInnerHeight/2,reinforcementDepth]);
        
        // zrail lock
        // This is hard to get in the right position and doesn't add much rigidity of guidance. Usually not worth it.
        /*
        zrailLockWidth=1.5;
        zrailLockInset=9.3;
        translate([0, zrailLockInset, -reinforcementDepth]) cube([panelHp*hp, zrailLockWidth, reinforcementDepth]);
        translate([0, panelOuterHeight-zrailLockInset-zrailLockWidth, -reinforcementDepth]) cube([panelHp*hp, zrailLockWidth, reinforcementDepth]);
        */
    }
}

module panelText() {
    fontSize=6;
    smallFontSize=4;
    largeFontSize=18;
    textYOffset=120;
    embossDepth=0.6;  // 0.2, equivalent to one layer, doesn't really emboss (maybe due to slight elephant foot
    
    translate([panelWidth-1, textYOffset+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 0]) {
            linear_extrude(embossDepth) text("Blue Peaks", size=fontSize, font="Arial:style=Bold", spacing=0.9, $fn=32);
        }
    }
    /*
    // GIANT HELVETICA
    translate([panelWidth-largeFontSize-2, panelOuterHeight-0.4, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 90]) {
            linear_extrude(embossDepth) text("Blue Peaks", size=largeFontSize, font="Arial:style=Bold", spacing=0.9, $fn=32);
        }
    }
    */
    translate([22, (potHoleSpacing*1)+10, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 90]) {
            linear_extrude(embossDepth) text("Split", size=fontSize, font="Arial:style=Bold", spacing=0.9, $fn=32);
        }
    }
    translate([3, (potHoleSpacing*2)+10, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 90]) {
            linear_extrude(embossDepth) text("Mode", size=fontSize, font="Arial:style=Bold", spacing=0.9, $fn=32);
        }
    }
    
    /*
    // Vertical labels
    translate([panelWidth-9, 88+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 90]) {
            linear_extrude(embossDepth) text("Env", size=smallFontSize, font="Arial:style=Bold", spacing=0.9, $fn=32);
        }
    }
    translate([panelWidth-21, 95+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 90]) {
            linear_extrude(embossDepth) text("LFO", size=smallFontSize, font="Arial:style=Bold", spacing=0.9, $fn=32);
        }
    }
    translate([panelWidth-9, 103+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 90]) {
            linear_extrude(embossDepth) text("Tap", size=smallFontSize, font="Arial:style=Bold", spacing=0.9, $fn=32);
        }
    }
    translate([panelWidth-21, 112+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 90]) {
            linear_extrude(embossDepth) text("Drum", size=smallFontSize, font="Arial:style=Bold", spacing=0.9, $fn=32);
        }
    }
    */
    translate([panelWidth-0.4, 84+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 0]) {
            linear_extrude(embossDepth) text("Env", size=smallFontSize, font="Arial:style=Bold", spacing=0.9, $fn=32);
        }
    }
    translate([panelWidth-0.4, 92+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 0]) {
            linear_extrude(embossDepth) text("LFO", size=smallFontSize, font="Arial:style=Bold", spacing=0.9, $fn=32);
        }
    }
    translate([panelWidth-0.4, 99+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 0]) {
            linear_extrude(embossDepth) text("Tap", size=smallFontSize, font="Arial:style=Bold", spacing=0.9, $fn=32);
        }
    }
    translate([panelWidth-0.4, 107+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 0]) {
            linear_extrude(embossDepth) text("808", size=smallFontSize, font="Arial:style=Bold", spacing=0.9, $fn=32);
        }
    }
    
    
    translate([22, 59+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 45]) {
            linear_extrude(embossDepth) text("→", size=largeFontSize-6, font="Consolas:style=Bold", halign="center", spacing=0.9, $fn=32);
        }
    }
    translate([12, 59+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 45]) {
            linear_extrude(embossDepth) text("→", size=largeFontSize-6, font="Consolas:style=Bold", halign="center", spacing=0.9, $fn=32);
        }
    }
    translate([20.35, 45+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 0]) {
            linear_extrude(embossDepth) text(".", size=largeFontSize-4, font="Arial:style=Bold", halign="center", spacing=0.9, $fn=32);
        }
    }
    translate([10.9, 45+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 0]) {
            linear_extrude(embossDepth) text("..", size=largeFontSize-4, font="Arial:style=Bold", halign="center", spacing=0.7, $fn=32);
        }
    }
    translate([20.5, 113+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 0]) {
            linear_extrude(embossDepth) text("↓", size=largeFontSize-7, font="Consolas:style=Bold", halign="center", spacing=0.9, $fn=32);
        }
    }
    translate([10.5, 113+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 0]) {
            linear_extrude(embossDepth) text("↓", size=largeFontSize-7, font="Consolas:style=Bold", halign="center", spacing=0.9, $fn=32);
        }
    }
    translate([20.35, 101+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 0]) {
            linear_extrude(embossDepth) text(".", size=largeFontSize-4, font="Arial:style=Bold", halign="center", spacing=0.9, $fn=32);
        }
    }
    translate([10.9, 101+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 0]) {
            linear_extrude(embossDepth) text("..", size=largeFontSize-4, font="Arial:style=Bold", halign="center", spacing=0.7, $fn=32);
        }
    }

    translate([2, 88+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 90]) {
            linear_extrude(embossDepth) text("..", size=largeFontSize-4, font="Arial:style=Bold", halign="center", spacing=0.9, $fn=32);
        }
    }
    translate([2, 68.5+fontSize+0.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 90]) {
            linear_extrude(embossDepth) text(".", size=largeFontSize-4, font="Arial:style=Bold", halign="center", spacing=0.7, $fn=32);
        }
    }
    
    translate([44, 23, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 0]) {
            linear_extrude(embossDepth) text("--", size=largeFontSize-4, font="Arial:style=Bold", halign="center", spacing=0.7, $fn=32);
        }
    }
    translate([44, 42.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 0]) {
            linear_extrude(embossDepth) text("=", size=largeFontSize-4, font="Arial:style=Bold", halign="center", spacing=0.7, $fn=32);
        }
    }
    translate([44, 59.5, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 0]) {
            linear_extrude(embossDepth) text("≡", size=largeFontSize-6, font="Arial:style=Bold", halign="center", spacing=0.7, $fn=32);
        }
    }
    translate([46.2, 77.2, panelThickness-embossDepth+0.01]) {
        rotate([180, 180, 0]) {
            linear_extrude(embossDepth) text("⁞", size=largeFontSize-6, font="Arial:style=Bold", halign="center", spacing=0.7, $fn=32);
        }
    }
    
    // ←
    // →
}

module eurorackMountHoles(pw, holes, hw)
{
    holes = holes-holes%2;//mountHoles ought to be even for the sake of code complexity. Odd values are -=1
    eurorackMountHolesTopRow(pw, hw, holes/2);
    eurorackMountHolesBottomRow(pw, hw, holes/2);
}

module eurorackMountHolesTopRow(pw, hw, holes)
{
    
    //topleft
    translate([offsetToMountHoleCenterX,panelOuterHeight-offsetToMountHoleCenterY,0])
    {
        eurorackMountHole(hw);
    }
    if(holes>1)
    {
        translate([pw-hwCubeWidth-hp,panelOuterHeight-offsetToMountHoleCenterY,0])
    {
        eurorackMountHole(hw);
    }
    }
    if(holes>2)
    {
        holeDivs = pw/(holes-1);
        for (i =[1:holes-2])
        {
            translate([holeDivs*i,panelOuterHeight-offsetToMountHoleCenterY,0]){
                eurorackMountHole(hw);
            }
        }
    }
}

module eurorackMountHolesBottomRow(pw, hw, holes)
{
    
    //bottomRight
    translate([pw-hwCubeWidth-hp,offsetToMountHoleCenterY,0])
    {
        eurorackMountHole(hw);
    }
    if(holes>1)
    {
        translate([offsetToMountHoleCenterX,offsetToMountHoleCenterY,0])
    {
        eurorackMountHole(hw);
    }
    }
    if(holes>2)
    {
        holeDivs = pw/(holes-1);
        for (i =[1:holes-2])
        {
            translate([holeDivs*i,offsetToMountHoleCenterY,0]){
                eurorackMountHole(hw);
            }
        }
    }
}

module eurorackMountHole()
{
    
    mountHoleDepth = panelThickness+2; //because diffs need to be larger than the object they are being diffed from for ideal BSP operations
    
    if(hwCubeWidth<0)
    {
        hwCubeWidth=0;
    }
    translate([mountholeXOffset,0,-1]){
        union()
        {
            cylinder(r=mountHoleRad, h=mountHoleDepth, $fn=20);
            translate([0,-mountHoleRad,0]){
            cube([hwCubeWidth, mountHoleDiameter, mountHoleDepth]);
            }
            translate([hwCubeWidth,0,0]){
                cylinder(r=mountHoleRad, h=mountHoleDepth, $fn=20);
                }
        }
    }
}

module eurorackPanel(panelWidth,  mountHoles=2, hw = holeWidth, ignoreMountHoles=false)
{
    //mountHoles ought to be even. Odd values are -=1
    difference()
    {
        union() {
            cube([panelWidth,panelOuterHeight,panelThickness]);
            reinforcement();
            mountingBracket(); 
            
            //panelText();
            // lego studs - complicate printing
            // translate([((hp*panelHp)/2) - (lego_unit*5)/2, panelInnerHeight-(lego_unit*5)/2, lego_stud_height]) lego_stud_array(2, 2);
        }
        
        if(!ignoreMountHoles)
        {
            eurorackMountHoles(panelWidth, mountHoles, holeWidth);
        }
        potHoles(panelWidth, potRadius);
        socketHoles(socketRadius);
        bigButtonHoles();
        momButtonHoles();
        ledHoles(panelWidth);
        
        panelText();
    }
}


union() {
    eurorackPanel(panelWidth, holeCount, holeWidth);
}
