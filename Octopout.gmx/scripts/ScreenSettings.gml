// screen
window_set_fullscreen(true);

// anti-aliasing
if display_aa > 12  display_reset(8, true);

// 1:1 proportion configs
var BaseW = 1280;
var BaseH = 1024;
var Aspect = BaseW / BaseH; // get the GAME aspect ratio
if (display_get_width() < display_get_height())
{
    //portrait
    var ww = min(BaseW, display_get_width());
    var hh = ww / Aspect;
}
else
{
    //landscape
    var hh = min(BaseH, display_get_height());
    var ww = hh * Aspect;
}
surface_resize(application_surface, ww, hh);
