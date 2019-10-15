local.__prop = self.argument0
local.__bind = self.argument1
local.__backinfo = self.argument2
if (local.__backinfo[0] == -1)
    _temp_local_var_1 = 1
else
    _temp_local_var_1 = (layer_background_exists(local.__backinfo[1], local.__backinfo[0]) == 0)
if _temp_local_var_1
{
    local.__backinfo = __background_get_element(local.__bind)
    if (local.__backinfo[0] == -1)
        return -1
}
local.__res = -1
local.__backid = local.__backinfo[0]
local.__layerid = local.__backinfo[1]
local.__isfore = local.__backinfo[2]
switch local.__prop
{
    case e__BG.Visible:
        {
            local.__res = layer_get_visible(local.__layerid)
        }
        break
    
    case 1:
        {
            local.__res = local.__isfore
        }
        break
    
    case 2:
        {
            local.__res = layer_background_get_sprite(local.__backid)
        }
        break
    
    case 3:
        {
            local.__res = layer_get_x(local.__layerid)
        }
        break
    
    case 4:
        {
            local.__res = layer_get_y(local.__layerid)
        }
        break
    
    case 5:
        {
            local.__res = sprite_get_width(layer_background_get_index(local.__backid))
        }
        break
    
    case 6:
        {
            local.__res = sprite_get_height(layer_background_get_index(local.__backid))
        }
        break
    
    case 7:
        {
            local.__res = layer_background_get_htiled(local.__backid)
        }
        break
    
    case 8:
        {
            local.__res = layer_background_get_vtiled(local.__backid)
        }
        break
    
    case 9:
        {
            local.__res = layer_background_get_xscale(local.__backid)
        }
        break
    
    case 10:
        {
            local.__res = layer_background_get_yscale(local.__backid)
        }
        break
    
    case 11:
        {
            local.__res = layer_get_hspeed(local.__layerid)
        }
        break
    
    case 12:
        {
            local.__res = layer_get_vspeed(local.__layerid)
        }
        break
    
    case 13:
        {
            local.__res = layer_background_get_blend(local.__backid)
        }
        break
    
    case 14:
        {
            local.__res = layer_background_get_alpha(local.__backid)
        }
        break
    
    default:
        break
    
}

return local.__res
