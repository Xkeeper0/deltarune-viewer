local.array = self.argument0
local.xx = self.argument1
local.yy = self.argument2
local.vspacing = self.argument3
local.selection_indices = self.argument4
local.func_depth = self.argument5
local.menu_depth = self.argument6
local.length = ds_list_size(local.array)
local.i = 0
while(true)
{
    if (local.i < local.length)
    {
        local.ndx = (local.i / 3)
        local.type = ds_list_find_value(local.array, local.i)
        local.item = ds_list_find_value(local.array, (local.i + 1))
        local.name = ds_list_find_value(local.array, (local.i + 2))
        local.selected = 0
        local.prefix = "  "@3356
        if (local.ndx == local.selection_indices[local.func_depth])
            local.selected = 1
        if local.selected
        {
            local.prefix = "> "@3358
            if (local.func_depth > global.chemg_max_depth)
            {
                global.chemg_max_depth = local.func_depth
                global.chemg_cursor_y = local.yy
            }
        }
        if (local.type == "[group]"@3361)
            local.name = (("[ "@3362 + local.name) + "... ]"@3363)
        scr_84_draw_text_outline(local.xx, local.yy, (local.prefix + local.name))
        local.yy = (local.yy + local.vspacing)
        if (local.func_depth < local.menu_depth)
            _temp_local_var_1 = (local.ndx == local.selection_indices[local.func_depth])
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
            local.yy = scr_84_draw_menu(local.item, (local.xx + 20), local.yy, local.vspacing, local.selection_indices, (local.func_depth + 1), local.menu_depth)
        local.i = (local.i + 3)
        continue
    }
    break
}
return local.yy
