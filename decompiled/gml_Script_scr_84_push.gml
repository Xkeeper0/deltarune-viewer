if (~ variable_global_exists("chemg_stack"@3403))
{
    global.chemg_stack = array_create(0)
    global.chemg_stack[0] = 0
}
local.top_ndx = global.chemg_stack[0]
local.i = 0
while(true)
{
    if (local.i < self.argument_count)
    {
        global.chemg_stack[((local.top_ndx + local.i) + 1)] = self.argument[local.i]
        local.i = (local.i + 1)
        continue
    }
    break
}
global.chemg_stack[0] = (local.top_ndx + self.argument_count)
