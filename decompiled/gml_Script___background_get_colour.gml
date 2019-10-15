local.__colinfo = __background_get_colour_element()
if (local.__colinfo[0] == -1)
    return 0
local.__col = layer_background_get_blend(local.__colinfo[0])
return local.__col
