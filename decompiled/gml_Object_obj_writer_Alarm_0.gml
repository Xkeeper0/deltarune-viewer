if (self.rate > 2)
    self.alarm[1] = 1
else
{
    if (self.first_alarm == 1)
        _temp_local_var_1 = (self.pos >= 2)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
        scr_textsound()
}
if (self.pos <= self.length)
    self.alarm[0] = self.rate
if (self.first_alarm == 0)
{
    self.getchar = string_char_at(self.mystring, 1)
    if (self.getchar == "\"@1547)
        self.pos = (self.pos + 3)
    else
        self.pos = (self.pos + 1)
    self.first_alarm = 1
}
else
{
    self.getchar = string_char_at(self.mystring, self.pos)
    self.nextchar = string_char_at(self.mystring, (self.pos + 1))
    if (self.getchar == "&"@1540)
        self.pos = (self.pos + 1)
    if (self.getchar == "\"@1547)
        self.pos = (self.pos + 3)
    if (self.getchar == "/"@357)
    {
        self.halt = 1
        if (self.nextchar == "%"@3588)
            self.halt = 2
        self.alarm[0] = -1
    }
    self.getchar = string_char_at(self.mystring, self.pos)
    self.nextchar = string_char_at(self.mystring, (self.pos + 1))
    if (self.getchar == "|"@1548)
        self.pos = (self.pos + 2)
    if (self.getchar == "^"@1541)
    {
        self.pos = (self.pos + 2)
        if (self.alarm[0] > 0)
        {
            if (self.nextchar == "1"@2522)
                self.alarm[0] = (self.alarm[0] + 5)
            if (self.nextchar == "2"@2523)
                self.alarm[0] = (self.alarm[0] + 10)
            if (self.nextchar == "3"@1174)
                self.alarm[0] = (self.alarm[0] + 15)
            if (self.nextchar == "4"@1175)
                self.alarm[0] = (self.alarm[0] + 20)
            if (self.nextchar == "5"@2524)
                self.alarm[0] = (self.alarm[0] + 30)
            if (self.nextchar == "6"@2525)
                self.alarm[0] = (self.alarm[0] + 40)
            if (self.nextchar == "7"@2526)
                self.alarm[0] = (self.alarm[0] + 60)
            if (self.nextchar == "8"@2527)
                self.alarm[0] = (self.alarm[0] + 90)
            if (self.nextchar == "9"@2528)
                self.alarm[0] = (self.alarm[0] + 150)
        }
    }
    self.pos = (self.pos + 1)
}
