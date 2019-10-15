local.list = self.argument[0]
local.i = 1
while(true)
{
    if (local.i < self.argument_count)
    {
        ds_list_add(local.list, self.argument[local.i])
        local.i = (local.i + 1)
        continue
    }
    break
}
