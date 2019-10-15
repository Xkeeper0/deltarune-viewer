local.__layers = layer_get_all()
local.__numlayers = array_length_1d(local.__layers)
local.__i = 0
while(true)
{
    if (local.__i < local.__numlayers)
    {
        local.__layer_id = local.__layers[local.__i]
        local.__els = layer_get_all_elements(local.__layer_id)
        local.__numels = array_length_1d(local.__els)
        local.__name = layer_get_name(local.__layer_id)
        show_debug_message((((((("layer: "@10114 + string(local.__i)) + " "@24) + local.__name) + "["@2594) + string(local.__numels)) + "]"@2596))
        local.__pos = string_pos("_lang_"@10115, local.__name)
        if (local.__pos > 0)
            _temp_local_var_1 = (string_length(local.__name) > (local.__pos + 8))
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
        {
            local.__lang = string_copy(local.__name, (local.__pos + 6), 2)
            if (local.__lang != global.lang)
                layer_set_visible(local.__layer_id, 0)
            else
            {
                local.__j = 0
                while(true)
                {
                    if (local.__j < local.__numels)
                    {
                        local.__id = local.__els[local.__j]
                        local.__eltype = layer_get_element_type(local.__id)
                        if (local.__eltype == 2)
                        {
                            local.__inst = layer_instance_get_instance(local.__id)
                            local.__name = object_get_name(local.__inst.object_index)
                            show_debug_message(((("  instance:"@10122 + string(local.__j)) + ": "@10123) + local.__name))
                        }
                        else
                        {
                            if (local.__eltype == 4)
                            {
                                local.__spr = layer_sprite_get_sprite(local.__id)
                                local.__name = sprite_get_name(local.__spr)
                                show_debug_message(((("  sprite: "@10127 + string(local.__j)) + ": "@10123) + local.__name))
                                local.__pos = string_pos("_lang_"@10115, local.__name)
                                if (local.__pos > 0)
                                    _temp_local_var_2 = (string_length(local.__name) > (local.__pos + 8))
                                else
                                    _temp_local_var_2 = 0
                                if _temp_local_var_2
                                {
                                    local.__lang = string_copy(local.__name, (local.__pos + 6), 2)
                                    if (local.__lang != global.lang)
                                        layer_sprite_destroy(local.__id)
                                }
                            }
                            else
                            {
                                if (local.__eltype == 1)
                                    show_debug_message(("  background: "@10129 + string(local.__j)))
                                else
                                {
                                    if (local.__eltype == 5)
                                        show_debug_message(("  tilemap: "@10130 + string(local.__j)))
                                    else
                                    {
                                        if (local.__eltype == 6)
                                            show_debug_message(("  particlesystem: "@10131 + string(local.__j)))
                                        else
                                        {
                                            if (local.__eltype == 7)
                                                show_debug_message(("  tile: "@10132 + string(local.__j)))
                                            else
                                                show_debug_message(("  unknown: "@10133 + string(local.__j)))
                                        }
                                    }
                                }
                            }
                        }
                        local.__j = (local.__j + 1)
                        continue
                    }
                    break
                }
            }
        }
        else
        {
            local.__j = 0
            while(true)
            {
                if (local.__j < local.__numels)
                {
                    local.__id = local.__els[local.__j]
                    local.__eltype = layer_get_element_type(local.__id)
                    if (local.__eltype == 2)
                    {
                        local.__inst = layer_instance_get_instance(local.__id)
                        local.__name = object_get_name(local.__inst.object_index)
                        show_debug_message(((("  instance:"@10122 + string(local.__j)) + ": "@10123) + local.__name))
                    }
                    else
                    {
                        if (local.__eltype == 4)
                        {
                            local.__spr = layer_sprite_get_sprite(local.__id)
                            local.__name = sprite_get_name(local.__spr)
                            show_debug_message(((("  sprite: "@10127 + string(local.__j)) + ": "@10123) + local.__name))
                            local.__pos = string_pos("_lang_"@10115, local.__name)
                            if (local.__pos > 0)
                                _temp_local_var_2 = (string_length(local.__name) > (local.__pos + 8))
                            else
                                _temp_local_var_2 = 0
                            if _temp_local_var_2
                            {
                                local.__lang = string_copy(local.__name, (local.__pos + 6), 2)
                                if (local.__lang != global.lang)
                                    layer_sprite_destroy(local.__id)
                            }
                        }
                        else
                        {
                            if (local.__eltype == 1)
                                show_debug_message(("  background: "@10129 + string(local.__j)))
                            else
                            {
                                if (local.__eltype == 5)
                                    show_debug_message(("  tilemap: "@10130 + string(local.__j)))
                                else
                                {
                                    if (local.__eltype == 6)
                                        show_debug_message(("  particlesystem: "@10131 + string(local.__j)))
                                    else
                                    {
                                        if (local.__eltype == 7)
                                            show_debug_message(("  tile: "@10132 + string(local.__j)))
                                        else
                                            show_debug_message(("  unknown: "@10133 + string(local.__j)))
                                    }
                                }
                            }
                        }
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
