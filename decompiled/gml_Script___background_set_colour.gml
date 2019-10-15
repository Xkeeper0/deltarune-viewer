local.__newcol = self.argument0
local.__colinfo = __background_get_colour_element()
if (local.__colinfo[0] == -1)
    return 0
layer_background_blend(local.__colinfo[0], local.__newcol)
return local.__newcol
