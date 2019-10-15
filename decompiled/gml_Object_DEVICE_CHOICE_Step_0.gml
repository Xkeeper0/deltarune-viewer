if (self.fadebuffer > 0)
    self.ONEBUFFER = 1
if (self.TYPE > 0)
{
    if (self.fadebuffer < 0)
        _temp_local_var_1 = (self.FINISH == 0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        local.dx = 0
        local.dy = 0
        if right_p()
            local.dx = 1
        if left_p()
            local.dx = -1
        if down_p()
            local.dy = 1
        if up_p()
            local.dy = -1
        if (local.dx != 0)
            _temp_local_var_2 = (self.XMAX > 0)
        else
            _temp_local_var_2 = 0
        if _temp_local_var_2
        {
            local.found = 0
            while(true)
            {
                self.CURX = (((self.CURX + (self.XMAX + 1)) + local.dx) % (self.XMAX + 1))
                local.ccc = self.NAME[self.CURX][self.CURY]
                if (local.ccc != " "@24)
                {
                    if (local.ccc != "　"@9514)
                    {
                        if (local.ccc != ">"@9515)
                            _temp_local_var_3 = (local.ccc != "<"@9516)
                        else
                            _temp_local_var_3 = 0
                    }
                    else
                        _temp_local_var_3 = 0
                }
                else
                    _temp_local_var_3 = 0
                if _temp_local_var_3
                    local.found = 1
                if local.found
                {
                }
                else
                    continue
                break
            }
        }
        else
        {
            if (local.dy != 0)
                _temp_local_var_17 = (self.YMAX > 0)
            else
                _temp_local_var_17 = 0
            if _temp_local_var_17
            {
                local.found = 0
                while(true)
                {
                    self.CURY = (((self.CURY + (self.YMAX + 1)) + local.dy) % (self.YMAX + 1))
                    local.move = 1
                    local.ccc = ""@2240
                    if local.move
                    {
                        local.ccc = self.NAME[self.CURX][self.CURY]
                        if (local.ccc == ">"@9515)
                            self.CURX = (self.CURX + 1)
                        else
                        {
                            if (local.ccc == "<"@9516)
                                self.CURX = (self.CURX - 1)
                            else
                                local.move = 0
                        }
                        while(true)
                        {
                            if local.move
                            {
                                local.ccc = self.NAME[self.CURX][self.CURY]
                                if (local.ccc == ">"@9515)
                                    self.CURX = (self.CURX + 1)
                                else
                                {
                                    if (local.ccc == "<"@9516)
                                        self.CURX = (self.CURX - 1)
                                    else
                                        local.move = 0
                                }
                                continue
                            }
                            break
                        }
                    }
                    if (local.ccc != " "@24)
                        _temp_local_var_18 = (local.ccc != "　"@9514)
                    else
                        _temp_local_var_18 = 0
                    if _temp_local_var_18
                        local.found = 1
                    if local.found
                    {
                    }
                    else
                        continue
                    break
                }
            }
        }
    }
}
else
{
    if (self.fadebuffer < 0)
        _temp_local_var_23 = (self.FINISH == 0)
    else
        _temp_local_var_23 = 0
    if _temp_local_var_23
    {
        if right_p()
            self.CURX = 1
        if left_p()
            self.CURX = 0
    }
}
if (self.TYPE >= 0)
    _temp_local_var_4 = (self.TYPE <= 2)
else
    _temp_local_var_4 = 0
if _temp_local_var_4
{
    self.DRAWHEART = 1
    if (self.CURX >= 0)
    {
        self.IDEALX = self.NAMEX[self.CURX][self.CURY]
        self.IDEALY = self.NAMEY[self.CURX][self.CURY]
        if (self.TYPE == 0)
        {
            scr_84_set_draw_font("main"@1558)
            self.IDEALX = (self.IDEALX + ((string_width(self.NAME[self.CURX][self.CURY]) / 2) - 10))
        }
    }
    else
    {
        self.IDEALX = 150
        self.IDEALY = 180
    }
    if (abs((self.HEARTX - self.IDEALX)) <= 2)
        self.HEARTX = self.IDEALX
    if (abs((self.HEARTY - self.IDEALY)) <= 2)
        self.HEARTY = self.IDEALY
    self.HEARTDIFF = ((self.IDEALX - self.HEARTX) * 0.3)
    self.HEARTX = (self.HEARTX + self.HEARTDIFF)
    if (self.DRAWHEART == 0)
    {
        self.HEARTX = self.IDEALX
        self.DRAWHEART = 1
    }
    self.HEARTDIFF = ((self.IDEALY - self.HEARTY) * 0.3)
    self.HEARTY = (self.HEARTY + self.HEARTDIFF)
    if (self.DRAWHEART == 0)
    {
        self.HEARTY = self.IDEALY
        self.DRAWHEART = 1
    }
    if (self.FINISH == 0)
    {
        if button1_p()
        {
            if (self.CURX >= 0)
                _temp_local_var_5 = (self.ONEBUFFER < 0)
            else
                _temp_local_var_5 = 0
        }
        else
            _temp_local_var_5 = 0
        if _temp_local_var_5
        {
            global.choice = self.CURX
            if (self.TYPE == 2)
                global.choice = self.CURY
            self.FINISH = 1
            self.ONEBUFFER = 99
        }
    }
}
if (self.TYPE == 3)
{
    self.DRAWHEART = 1
    local.str = self.NAME[self.CURX][self.CURY]
    local.cmd = ""@2240
    if (string_length(local.str) > 1)
    {
        local.cmd = string_char_at(local.str, 2)
        local.str = string_copy(local.str, 4, (string_length(local.str) - 3))
    }
    scr_84_set_draw_font("main"@1558)
    self.IDEALX = ((self.NAMEX[self.CURX][self.CURY] + (string_width(local.str) / 2)) - 10)
    self.IDEALY = (self.NAMEY[self.CURX][self.CURY] - 2)
    if (abs((self.HEARTX - self.IDEALX)) <= 2)
        self.HEARTX = self.IDEALX
    if (abs((self.HEARTY - self.IDEALY)) <= 2)
        self.HEARTY = self.IDEALY
    self.HEARTDIFF = ((self.IDEALX - self.HEARTX) * 0.5)
    if (abs(self.HEARTDIFF) > 60)
        self.DRAWHEART = 0
    self.HEARTX = (self.HEARTX + self.HEARTDIFF)
    if (self.DRAWHEART == 0)
    {
        self.HEARTX = self.IDEALX
        self.DRAWHEART = 1
    }
    self.HEARTDIFF = ((self.IDEALY - self.HEARTY) * 0.5)
    if (abs(self.HEARTDIFF) > 60)
        self.DRAWHEART = 0
    self.HEARTY = (self.HEARTY + self.HEARTDIFF)
    if (self.DRAWHEART == 0)
    {
        self.HEARTY = self.IDEALY
        self.DRAWHEART = 1
    }
    self.ERASE = 0
    if (self.FINISH == 0)
    {
        if button2_p()
            self.ERASE = 1
        if button1_p()
            _temp_local_var_6 = (self.ONEBUFFER < 0)
        else
            _temp_local_var_6 = 0
        if _temp_local_var_6
        {
            if (local.cmd == ""@2240)
            {
                if (string_length(self.NAMESTRING) < self.STRINGMAX)
                    self.NAMESTRING = (self.NAMESTRING + self.NAME[self.CURX][self.CURY])
            }
            if (local.cmd == "B"@2529)
                self.ERASE = 1
            if (local.cmd == "1"@2522)
                _temp_local_var_7 = 1
            else
            {
                if (local.cmd == "2"@2523)
                    _temp_local_var_7 = 1
                else
                    _temp_local_var_7 = (local.cmd == "3"@1174)
            }
            if _temp_local_var_7
            {
                local.new_type = real(local.cmd)
                if (self.LANGSUBTYPE != local.new_type)
                {
                    self.LANGSUBTYPE = local.new_type
                    scr_84_name_input_setup()
                }
            }
            if (local.cmd == "E"@2532)
            {
                if (self.ONEBUFFER < 0)
                    _temp_local_var_8 = (string_length(self.NAMESTRING) >= 1)
                else
                    _temp_local_var_8 = 0
            }
            else
                _temp_local_var_8 = 0
            if _temp_local_var_8
            {
                self.ONEBUFFER = 99
                self.FINISH = 1
                global.choice = 1
            }
        }
    }
    if (self.ERASE == 1)
        _temp_local_var_9 = (self.FINISH == 0)
    else
        _temp_local_var_9 = 0
    if _temp_local_var_9
    {
        if (string_length(self.NAMESTRING) > 0)
            self.NAMESTRING = string_delete(self.NAMESTRING, string_length(self.NAMESTRING), 1)
    }
}
self.ONEBUFFER = (self.ONEBUFFER - 1)
if (self.FINISH == 0)
    self.fadebuffer = (self.fadebuffer - 1)
if (self.FINISH == 1)
{
    global.flag[20] = 1
    if (self.fadebuffer < 0)
        self.fadebuffer = 0
    self.fadebuffer = (self.fadebuffer + 1)
    if (self.fadebuffer >= 10)
        instance_destroy()
}
