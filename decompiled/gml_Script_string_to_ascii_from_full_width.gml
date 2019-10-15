local.str = self.argument0
local.result = ""@2240
local.i = 1
while(true)
{
    if (local.i <= string_length(local.str))
    {
        local.ch = ord(string_char_at(local.str, local.i))
        if (local.ch >= 65281)
            _temp_local_var_1 = (local.ch <= 65374)
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
            local.ch = (local.ch - 65248)
        else
        {
            if (local.ch == 12288)
                local.ch = 32
        }
        local.lastch = chr(local.ch)
        local.result = (local.result + local.lastch)
        local.i = (local.i + 1)
        continue
    }
    break
}
return local.result
