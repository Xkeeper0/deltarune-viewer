local.__nearestdepth = -15000
local.__farthestdepth = 15999
local.__depthinc = 100
local.__result[0] = -1
local.__result[1] = -1
local.__colstring = "Compatibility_Colour"@2822
local.__layerlist = layer_get_all()
local.__layerlistlength = array_length_1d(local.__layerlist)
local.__layerid = -1
local.__isforeground = 0
local.__i = 0
while(true)
{
    if (local.__i < local.__layerlistlength)
    {
        local.__layername = layer_get_name(local.__layerlist[local.__i])
        if (string_pos(local.__colstring, local.__layername) > 0)
            break
        else
        {
            local.__i = (local.__i + 1)
            continue
        }
    }
    break
}
if (local.__layerid != -1)
{
    local.__els = layer_get_all_elements(local.__layerid)
    local.__elslength = array_length_1d(local.__els)
    local.__i = 0
    while(true)
    {
        if (local.__i < local.__elslength)
        {
            if (layer_get_element_type(local.__els[local.__i]) == 1)
            {
                local.__result[0] = local.__els[local.__i]
                local.__result[1] = local.__layerid
            }
            local.__i = (local.__i + 1)
            continue
        }
        break
    }
}
else
{
    local.__newback = __background_set_element(-1, 0, 0, -1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1)
    local.__result[0] = local.__newback[0]
    local.__result[1] = local.__newback[1]
}
return local.__result
