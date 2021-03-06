// Template mesh geometry file for a rib waveguide.

d = 1; // grating period
d_in_nm = 100;
dy_in_nm = 50;
dy = dy_in_nm/d_in_nm;
a1 = 20;
a1y = 10;
radius1 = (a1/(2*d_in_nm))*d;
radius1y = (a1y/(2*d_in_nm))*d;

slabx = 80;
slaby = 10;
slab_w = slabx/d_in_nm;
slab_h = slaby/d_in_nm;

slab2y = 5;
slab2_h = slab2y/d_in_nm;

coatx = 2;
coaty = 2;
coat_w = coatx/d_in_nm;
coat_h = coaty/d_in_nm;

coat2x = 4;
coat2y = 4;
coat2_w = coat2x/d_in_nm;
coat2_h = coat2y/d_in_nm;

lc = 0; // background and unitcell edge
lc2 = lc/1; // rib
lc3 = lc/1; // slab
lc4 = lc/1; // coat
lc5 = lc/1; // slab2
lc6 = lc/1; // coat2

hy = dy/2 + (slab_h/2) + radius1y; // 
hx = 0.;


Point(1) = {0, 0, 0, lc};
Point(2) = {-hx, -dy, 0, lc};
Point(3) = {-hx+d, -dy, 0, lc};
Point(4) = {d, 0, 0,lc};

// Slab
Point(5) = {d/2-slab_w/2, -hy+slab_h, 0, lc3};
Point(6) = {d/2+slab_w/2, -hy+slab_h, 0, lc3};
Point(13) = {d/2-slab_w/2, -hy, 0, lc3};
Point(14) = {d/2+slab_w/2, -hy, 0, lc3};

// Slab2
Point(27) = {d/2-slab_w/2, -hy-slab2_h, 0, lc5};
Point(28) = {d/2+slab_w/2, -hy-slab2_h, 0, lc5};

// Rib
Point(7) = {-hx+d/2-radius1, -hy+slab_h, 0, lc2};
Point(8) = {-hx+d/2+radius1, -hy+slab_h, 0, lc2};
Point(9) = {-hx+d/2-radius1, -hy+2*radius1y+slab_h, 0, lc2};
Point(10) = {-hx+d/2+radius1, -hy+2*radius1y+slab_h, 0, lc2};

// Coat
Point(15) = {d/2-slab_w/2, -hy+slab_h+coat_h, 0, lc4};
Point(16) = {d/2+slab_w/2, -hy+slab_h+coat_h, 0, lc4};
Point(17) = {d/2-(radius1+coat_w), -hy+slab_h+coat_h, 0, lc4};
Point(18) = {d/2+(radius1+coat_w), -hy+slab_h+coat_h, 0, lc4};
Point(19) = {d/2-(radius1+coat_w), -hy+slab_h+coat_h+2*radius1y, 0, lc4};
Point(20) = {d/2+(radius1+coat_w), -hy+slab_h+coat_h+2*radius1y, 0, lc4};

// Coat2
Point(21) = {d/2-slab_w/2, -hy+slab_h+coat_h+coat2_h, 0, lc6};
Point(22) = {d/2+slab_w/2, -hy+slab_h+coat_h+coat2_h, 0, lc6};
Point(23) = {d/2-(radius1+coat_w+coat2_w), -hy+slab_h+coat_h+coat2_h, 0, lc6};
Point(24) = {d/2+(radius1+coat_w+coat2_w), -hy+slab_h+coat_h+coat2_h, 0, lc6};
Point(25) = {d/2-(radius1+coat_w+coat2_w), -hy+slab_h+coat_h+coat2_h+2*radius1y, 0, lc6};
Point(26) = {d/2+(radius1+coat_w+coat2_w), -hy+slab_h+coat_h+coat2_h+2*radius1y, 0, lc6};

Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};
Line(5) = {5, 7};
Line(6) = {7, 9};
Line(7) = {9, 10};
Line(8) = {10, 8};
Line(9) = {8, 7};
Line(10) = {8, 6};
Line(11) = {6, 14};
Line(12) = {14, 13};
Line(13) = {13, 5};

Physical Line(21) = {1};
Physical Line(22) = {2};
Physical Line(23) = {3};
Physical Line(24) = {4};

Line(25) = {5, 15};
Line(26) = {15, 17};
Line(27) = {17, 19};
Line(28) = {19, 20};
Line(29) = {20, 18};
Line(30) = {18, 16};
Line(31) = {16, 6};
Line(41) = {15, 21};
Line(42) = {21, 23};
Line(43) = {23, 25};
Line(44) = {25, 26};
Line(45) = {26, 24};
Line(46) = {24, 22};
Line(47) = {22, 16};
Line(48) = {13, 27};
Line(49) = {27, 28};
Line(50) = {28, 14};

Line Loop(35) = {6, 7, 8, 9};
Plane Surface(36) = {35};
Line Loop(37) = {9, -5, -13, -12, -11, -10};
Plane Surface(38) = {37};
Line Loop(39) = {26, 27, 28, 29, 30, 31, -10, -8, -7, -6, -5, 25};
Plane Surface(40) = {39};
Line Loop(51) = {42, 43, 44, 45, 46, 47, -30, -29, -28, -27, -26, 41};
Plane Surface(52) = {51};
Line Loop(53) = {12, 48, 49, 50};
Plane Surface(54) = {53};
Line Loop(55) = {1, 2, 3, 4};
Line Loop(56) = {42, 43, 44, 45, 46, 47, 31, 11, -50, -49, -48, 13, 25, 41};
Plane Surface(57) = {55, 56};
Physical Surface(1) = {57}; // bkg
Physical Surface(2) = {36}; // rib
Physical Surface(3) = {38};	// slab
Physical Surface(4) = {40}; // coat
Physical Surface(5) = {54}; // slab2
Physical Surface(6) = {52}; // coat2
