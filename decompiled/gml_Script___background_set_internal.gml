local.__prop = self.argument0
local.__bind = self.argument1
local.__val = self.argument2
local.__backinfo = self.argument3
if (local.__backinfo[0] == -1)
    return -1
local.__backid = local.__backinfo[0]
local.__layerid = local.__backinfo[1]
local.__isfore = local.__backinfo[2]
if (local.__prop == e__BG.Foreground)
{
    if (round(local.__val) != round(local.__isfore))
    {
        local.__visible = layer_get_visible(local.__layerid)
        local.__index = layer_background_get_sprite(local.__backid)
        local.__htiled = layer_background_get_htiled(local.__backid)
        local.__vtiled = layer_background_get_vtiled(local.__backid)
        local.__stretch = layer_background_get_stretch(local.__backid)
        local.__blend = layer_background_get_blend(local.__backid)
        local.__alpha = layer_background_get_alpha(local.__backid)
        local.__xscale = layer_background_get_xscale(local.__backid)
        local.__yscale = layer_background_get_yscale(local.__backid)
        local.__x = layer_get_x(local.__layerid)
        local.__y = layer_get_y(local.__layerid)
        local.__hspeed = layer_get_hspeed(local.__layerid)
        local.__vspeed = layer_get_vspeed(local.__layerid)
        __background_set_element(local.__bind, local.__visible, local.__val, local.__index, local.__x, local.__y, local.__htiled, local.__vtiled, local.__xscale, local.__yscale, local.__stretch, local.__hspeed, local.__vspeed, local.__blend, local.__alpha)
    }
}
else
    switch local.__prop
    {
        case e__BG.Visible:
            {
                layer_set_visible(local.__layerid, local.__val)
            }
            break
        
        case 2:
            {
                layer_background_change(local.__backid, local.__val)
            }
            break
        
        case 3:
            {
                layer_x(local.__layerid, local.__val)
            }
            break
        
        case 4:
            {
                layer_y(local.__layerid, local.__val)
            }
            break
        
        case 7:
            {
                layer_background_htiled(local.__backid, local.__val)
            }
            break
        
        case 8:
            {
                layer_background_vtiled(local.__backid, local.__val)
            }
            break
        
        case 9:
            {
                layer_background_xscale(local.__backid, local.__val)
            }
            break
        
        case 10:
            {
                layer_background_yscale(local.__backid, local.__val)
            }
            break
        
        case 11:
            {
                layer_hspeed(local.__layerid, local.__val)
            }
            break
        
        case 12:
            {
                layer_vspeed(local.__layerid, local.__val)
            }
            break
        
        case 13:
            {
                layer_background_blend(local.__backid, local.__val)
            }
            break
        
        case 14:
            {
                layer_background_alpha(local.__backid, local.__val)
            }
            break
        
        default:
            break
        
    }
    
return -1
