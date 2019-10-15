local.__depth = self.argument0
local.__tiles[0] = -1
local.__currtile = 0
local.__layers = layer_get_all()
local.__numlayers = array_length_1d(local.__layers)
local.__i = 0
while(true)
{
    if (local.__i < local.__numlayers)
    {
        if (layer_get_depth(local.__layers[local.__i]) != local.__depth)
        {
        }
        else
        {
            local.__els = layer_get_all_elements(local.__layers[local.__i])
            local.__numels = array_length_1d(local.__els)
            local.__j = 0
            while(true)
            {
                if (local.__j < local.__numels)
                {
                    local.__eltype = layer_get_element_type(local.__els[local.__j])
                    if (local.__eltype == 7)
                    {
                        local.__tiles[local.__currtile] = local.__els[local.__j]
                        local.__currtile = (local.__currtile + 1)
                    }
                    local.__j = (local.__j + 1)
                    continue
                }
                break
            }
        }
        local.__i = (local.__i + 1)
        continue
    }
    break
}
return local.__tiles
