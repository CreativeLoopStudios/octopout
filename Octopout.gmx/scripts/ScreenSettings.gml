// screen
window_set_fullscreen(true);

// anti-aliasing
if display_aa > 12  display_reset(8, true);

// 1:1 proportion configs
var base_w = 1280;
var base_h = 1024;
/*
var max_w = display_get_width();
var max_h = display_get_height();
*/
var max_w = base_w;
var max_h = base_h;

var aspect = max_w / max_h;

base_w = base_h * aspect;

//Perfect Pixel Scaling
if(max_w mod base_w != 0)
{
   var d = round(max_w/base_w);
   base_w = max_w/d; 
}

if(max_h mod base_h != 0)
{
   var d = round(max_h/base_h);
   base_h = max_h/d; 
}

if(base_w & 1) {
    base_w++;
}

if(base_h & 1) {
    base_h++;
}

view_wview[0] = base_w;
view_hview[0] = base_h;
view_wport[0] = base_w;
view_hport[0] = base_h;

surface_resize(application_surface, view_wview[0], view_hview[0]);
display_set_gui_size(view_wview[0], view_hview[0]);

/*
//var aspect = base_w / base_h;

var VIEW_WIDTH;
var VIEW_HEIGHT; 

if (max_w < max_h)
{
    // portait
    VIEW_WIDTH = min(base_w, max_w);
    VIEW_HEIGHT = VIEW_WIDTH / aspect;
}
else
{
    // landscape
    VIEW_HEIGHT = min(base_h, max_h);
    VIEW_WIDTH = VIEW_HEIGHT * aspect;
}

//surface_resize(application_surface, VIEW_WIDTH, VIEW_HEIGHT);

view_wview[0] = floor(VIEW_WIDTH);
view_hview[0] = floor(VIEW_HEIGHT);
view_wport[0] = max_w;
view_hport[0] = max_h;


surface_resize(application_surface, view_wview[0], view_hview[0]);*/

