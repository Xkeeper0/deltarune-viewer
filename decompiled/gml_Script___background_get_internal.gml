var __prop = self.argument0
var __bind = self.argument1
var __backinfo = self.argument2
if ((__backinfo[0] == -1) || (layer_background_exists(__backinfo[1], __backinfo[0]) == 0))
{
    __backinfo = __background_get_element(__bind)
    if (__backinfo[0] == -1)
        return -1;
}
var __res = -1
var __backid = __backinfo[0]
var __layerid = __backinfo[1]
var __isfore = __backinfo[2]
switch __prop
{
    case 0:
        __res = layer_get_visible(__layerid)
        break
    case 1:
        __res = __isfore
        break
    case 2:
        __res = layer_background_get_sprite(__backid)
        break
    case 3:
        __res = layer_get_x(__layerid)
        break
    case 4:
        __res = layer_get_y(__layerid)
        break
    case 5:
        __res = sprite_get_width(layer_background_get_index(__backid))
        break
    case 6:
        __res = sprite_get_height(layer_background_get_index(__backid))
        break
    case 7:
        __res = layer_background_get_htiled(__backid)
        break
    case 8:
        __res = layer_background_get_vtiled(__backid)
        break
    case 9:
        __res = layer_background_get_xscale(__backid)
        break
    case 10:
        __res = layer_background_get_yscale(__backid)
        break
    case 11:
        __res = layer_get_hspeed(__layerid)
        break
    case 12:
        __res = layer_get_vspeed(__layerid)
        break
    case 13:
        __res = layer_background_get_blend(__backid)
        break
    case 14:
        __res = layer_background_get_alpha(__backid)
        break
    default:
        break
}

return __res;
