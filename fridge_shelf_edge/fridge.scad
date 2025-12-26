include <polyedge.scad>
// Parameters
channel_width  = 7.3;     // inner width
channel_height = 10;     // inner height
wall           = 2;     // wall thickness
length         = 221;    // extrusion length
radius         = 0.5;     // corner radius
$fn = 32;               // circle resolution

linear_extrude(length) {
               polyedge([[0,0,radius],[0,channel_height,radius],[channel_width,channel_height,radius],[channel_width,0,radius],[channel_width-wall,0,radius],[channel_width-wall,2],[channel_width-wall-0.2,2.5],[channel_width-wall-0.2,3.5],[channel_width-wall,4],[channel_width-wall,channel_height-wall,radius],[wall,channel_height-wall,radius],[wall,0,radius]]);
               
}