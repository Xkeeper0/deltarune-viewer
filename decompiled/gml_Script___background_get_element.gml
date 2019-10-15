local.__bind = self.argument0
local.__result[0] = -1
local.__result[1] = -1
local.__result[2] = -1
local.__fgstring = "Compatibility_Foreground_"@2868
local.__bgstring = "Compatibility_Background_"@2870
local.__fglen = string_length(local.__fgstring)
local.__bglen = string_length(local.__bgstring)
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
        if (string_pos(local.__fgstring, local.__layername) > 0)
        {
            local.__slotchr = string_char_at(local.__layername, (local.__fglen + 1))
            if (local.__slotchr == ""@2240)
            {
                local.__i = (local.__i + 1)
                continue
            }
            else
            {
                local.__slot = real(local.__slotchr)
                if (local.__slot == local.__bind)
                    break
                else
                {
                    local.__i = (local.__i + 1)
                    continue
                }
            }
        }
        else
        {
            if (string_pos(local.__bgstring, local.__layername) > 0)
            {
                local.__slotchr = string_char_at(local.__layername, (local.__bglen + 1))
                if (local.__slotchr == ""@2240)
                {
                    local.__i = (local.__i + 1)
                    continue
                }
                else
                {
                    local.__slot = real(local.__slotchr)
                    if (local.__slot == local.__bind)
                        break
                    else
                    {
                        local.__i = (local.__i + 1)
                        continue
                    }
                }
            }
            else
            {
                local.__i = (local.__i + 1)
                continue
            }
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
                local.__result[2] = local.__isforeground
            }
            local.__i = (local.__i + 1)
            continue
        }
        break
    }
}
else
{
    local.__newback = __background_set_element(local.__bind, 0, 0, -1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 16777215, 1)
    local.__result[0] = local.__newback[0]
    local.__result[1] = local.__newback[1]
    local.__result[2] = 0
}
return local.__result
