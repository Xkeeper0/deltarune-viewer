local.str = self.argument0
local.result = ""@2240
local.lastch = ""@2240
local.i = 1
while(true)
{
    if (local.i <= string_length(local.str))
    {
        local.ch = ord(string_char_at(local.str, local.i))
        if (local.ch >= 12449)
            _temp_local_var_1 = (local.ch <= 12534)
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
            local.ch = (local.ch - 96)
        else
        {
            if (local.ch >= 65377)
                _temp_local_var_2 = (local.ch <= 65439)
            else
                _temp_local_var_2 = 0
            if _temp_local_var_2
            {
                local.halfkata = "。「」、・をぁぃぅぇぉャュョッーあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわん゛゜"@3483
                local.ch = ord(string_char_at(local.halfkata, (local.ch - 65376)))
                if (local.lastch != ""@2240)
                {
                    if (local.ch == 12443)
                    {
                        local.daku_from = "かきくけこさしすせそたちつてとはひふへほ"@3485
                        local.daku_to = "がぎぐげござじずぜぞだぢづでどばびぶべぼ"@3487
                        local.pos = string_pos(local.lastch, local.daku_from)
                        if (local.pos != 0)
                            local.ch = ord(string_char_at(local.daku_to, local.pos))
                    }
                    else
                    {
                        if (local.ch == 12444)
                        {
                            local.handaku_from = "はひふへほ"@3489
                            local.handaku_to = "ぱぴぷぺぽ"@3491
                            local.pos = string_pos(local.lastch, local.handaku_from)
                            if (local.pos != 0)
                                local.ch = ord(string_char_at(local.handaku_to, local.pos))
                        }
                    }
                }
            }
        }
        local.lastch = chr(local.ch)
        local.result = (local.result + local.lastch)
        local.i = (local.i + 1)
        continue
    }
    break
}
return local.result
