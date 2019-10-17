if (self.rate > 2)
    self.alarm[1] = 1
else if ((self.first_alarm == 1) && (self.pos >= 2))
    scr_textsound()
if (self.pos <= self.length)
    self.alarm[0] = self.rate
if (self.first_alarm == 0)
{
    self.getchar = string_char_at(self.mystring, 1)
    if (self.getchar == "\\")
        self.pos += 3
    else
        self.pos += 1
    self.first_alarm = 1
}
else
{
    self.getchar = string_char_at(self.mystring, self.pos)
    self.nextchar = string_char_at(self.mystring, (self.pos + 1))
    if (self.getchar == "&")
        self.pos += 1
    if (self.getchar == "\\")
        self.pos += 3
    if (self.getchar == "/")
    {
        self.halt = 1
        if (self.nextchar == "%")
            self.halt = 2
        self.alarm[0] = -1
    }
    self.getchar = string_char_at(self.mystring, self.pos)
    self.nextchar = string_char_at(self.mystring, (self.pos + 1))
    if (self.getchar == "|")
        self.pos += 2
    if (self.getchar == "^")
    {
        self.pos += 2
        if (self.alarm[0] > 0)
        {
            if (self.nextchar == "1")
                self.alarm[0] += 5
            if (self.nextchar == "2")
                self.alarm[0] += 10
            if (self.nextchar == "3")
                self.alarm[0] += 15
            if (self.nextchar == "4")
                self.alarm[0] += 20
            if (self.nextchar == "5")
                self.alarm[0] += 30
            if (self.nextchar == "6")
                self.alarm[0] += 40
            if (self.nextchar == "7")
                self.alarm[0] += 60
            if (self.nextchar == "8")
                self.alarm[0] += 90
            if (self.nextchar == "9")
                self.alarm[0] += 150
        }
    }
    self.pos += 1
}
