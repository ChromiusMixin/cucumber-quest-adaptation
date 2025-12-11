var _panx = panx * 2;
var _pany = pany * 2;

if (global.darkzone)
{
    _panx = panx;
    _pany = pany;
}

var pdx = frac(_panx);
var pdy = frac(_pany);
_panx = _panx - pdx;
_pany = _pany - pdy;
hc += pdx;
vc += pdy;

if (abs(hc) >= 1)
{
    _panx += hc;
    hc = 0;
}

if (abs(vc) >= 1)
{
    _pany += vc;
    vc = 0;
}

if (!global.darkzone)
{
    _panx /= 2;
    _pany /= 2;
}

__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + _panx);
__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + _pany);
pantimer += 1;

if (pantimer >= panmax)
    instance_destroy();
