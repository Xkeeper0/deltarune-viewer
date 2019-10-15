local.__bind = self.argument0
local.__vis = self.argument1
local.__fore = self.argument2
local.__back = self.argument3
local.__x = self.argument4
local.__y = self.argument5
local.__htiled = self.argument6
local.__vtiled = self.argument7
local.__xscale = self.argument8
local.__yscale = self.argument9
local.__stretch = self.argument10
local.__hspeed = self.argument11
local.__vspeed = self.argument12
local.__blend = self.argument13
local.__alpha = self.argument14
local.__nearestdepth = 1000000000
local.__farthestdepth = -1000000000
local.__depthinc = 100
local.__result[0] = -1
local.__result[1] = -1
local.__fgstring = "Compatibility_Foreground_"@2868
local.__bgstring = "Compatibility_Background_"@2870
local.__colstring = "Compatibility_Colour"@2822
local.__fglen = string_length(local.__fgstring)
local.__bglen = string_length(local.__bgstring)
local.__layerlist = layer_get_all()
local.__layerlistlength = array_length_1d(local.__layerlist)
local.__collayer = -1
local.__i = 0
while(true)
{
    if (local.__i < 8)
    {
        local.__slots[local.__i] = -1
        local.__isforeground[local.__i] = 0
        local.__i = (local.__i + 1)
        continue
    }
    break
}
local.__i = 0
while(true)
{
    if (local.__i < local.__layerlistlength)
    {
        local.__layername = layer_get_name(local.__layerlist[local.__i])
        if (string_pos(local.__fgstring, local.__layername) > 0)
        {
            local.__slotchr = string_char_at(local.__layername, (local.__fglen + 1))
            if (local.__slotchr == ""@2240)
            {
            }
            else
            {
                local.__slot = real(local.__slotchr)
                local.__slots[local.__slot] = local.__layerlist[local.__i]
                local.__isforeground[local.__slot] = 1
            }
        }
        else
        {
            if (string_pos(local.__bgstring, local.__layername) > 0)
            {
                local.__slotchr = string_char_at(local.__layername, (local.__bglen + 1))
                if (local.__slotchr == ""@2240)
                {
                }
                else
                {
                    local.__slot = real(local.__slotchr)
                    local.__slots[local.__slot] = local.__layerlist[local.__i]
                    local.__isforeground[local.__slot] = 0
                }
            }
            else
            {
                if (string_pos(local.__colstring, local.__layername) > 0)
                {
                    local.__collayer = local.__layerlist[local.__i]
                    layer_depth(local.__layerlist[local.__i], local.__farthestdepth)
                }
                else
                {
                    local.__currdepth = layer_get_depth(local.__layerlist[local.__i])
                    if (local.__currdepth < local.__nearestdepth)
                        local.__nearestdepth = local.__currdepth
                    if (local.__currdepth > local.__farthestdepth)
                        local.__farthestdepth = local.__currdepth
                }
            }
        }
        local.__i = (local.__i + 1)
        continue
    }
    break
}
local.__farthestdepth = (local.__farthestdepth + (local.__depthinc + 1000))
local.__nearestdepth = (local.__nearestdepth - local.__depthinc)
local.__farthestdepth = max(local.__farthestdepth, 2147483600)
local.__nearestdepth = min(local.__nearestdepth, -2147482000)
local.__i = 0
while(true)
{
    if (local.__i < 8)
    {
        if (local.__slots[local.__i] != -1)
        {
            local.__depth = 0
            if (local.__isforeground[local.__i] == 1)
                local.__depth = (local.__nearestdepth - (local.__i * local.__depthinc))
            else
                local.__depth = ((local.__farthestdepth - local.__depthinc) - (local.__slot * local.__depthinc))
            layer_depth(local.__slots[local.__i], local.__depth)
        }
        local.__i = (local.__i + 1)
        continue
    }
    break
}
if (local.__collayer != -1)
    layer_depth(local.__collayer, local.__farthestdepth)
if (local.__bind == -1)
{
    local.__layername = local.__colstring
    local.__layerdepth = local.__farthestdepth
}
else
{
    if (local.__fore == 1)
    {
        local.__layername = (local.__fgstring + string(local.__bind))
        local.__layerdepth = (local.__nearestdepth - (local.__bind * local.__depthinc))
    }
    else
    {
        local.__layername = (local.__bgstring + string(local.__bind))
        local.__layerdepth = ((local.__farthestdepth - local.__depthinc) - (local.__bind * local.__depthinc))
    }
}
if (local.__bind == -1)
    local.__layerid = local.__collayer
else
    local.__layerid = local.__slots[local.__bind]
if (local.__layerid != -1)
    layer_destroy(local.__layerid)
local.__layerid = layer_create(local.__layerdepth, local.__layername)
layer_x(local.__layerid, local.__x)
layer_y(local.__layerid, local.__y)
layer_hspeed(local.__layerid, local.__hspeed)
layer_vspeed(local.__layerid, local.__vspeed)
local.__backel = layer_background_create(local.__layerid, local.__back)
layer_background_visible(local.__backel, local.__vis)
layer_background_htiled(local.__backel, local.__htiled)
layer_background_vtiled(local.__backel, local.__vtiled)
layer_background_xscale(local.__backel, local.__xscale)
layer_background_yscale(local.__backel, local.__yscale)
layer_background_stretch(local.__backel, local.__stretch)
layer_background_blend(local.__backel, local.__blend)
layer_background_alpha(local.__backel, local.__alpha)
local.__result[0] = local.__backel
local.__result[1] = local.__layerid
return local.__result
