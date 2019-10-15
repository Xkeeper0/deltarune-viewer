local.str = self.argument[0]
local.sub_id = 1
self.length = string_length(local.str)
self.pos = 0
while(true)
{
    if (local.sub_id < self.argument_count)
    {
        local.sub = ("~"@2593 + string(local.sub_id))
        local.str = string_replace_all(local.str, local.sub, self.argument[local.sub_id])
        local.sub_id = (local.sub_id + 1)
        continue
    }
    break
}
return local.str
