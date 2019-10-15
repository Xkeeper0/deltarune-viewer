if (~ variable_global_exists("chemg_stack"@3403))
{
    global.chemg_stack = array_create(0)
    global.chemg_stack[0] = 0
}
local.top_ndx = global.chemg_stack[0]
if (local.top_ndx <= 0)
    show_error("stack empty"@3406, 1)
global.chemg_stack[0] = (local.top_ndx - 1)
return global.chemg_stack[local.top_ndx]
