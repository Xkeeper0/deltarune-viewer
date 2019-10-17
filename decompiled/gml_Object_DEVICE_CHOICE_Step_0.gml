if (self.fadebuffer > 0)
    self.ONEBUFFER = 1
if (self.TYPE > 0)
{
    if ((self.fadebuffer < 0) && (self.FINISH == 0))
    {
        var dx = 0
        var dy = 0
        if right_p()
            dx = 1
        if left_p()
            dx = -1
        if down_p()
            dy = 1
        if up_p()
            dy = -1
        if ((dx != 0) && (self.XMAX > 0))
        {
            var found = 0
            do {
                self.CURX = (((self.CURX + (self.XMAX + 1)) + dx) % (self.XMAX + 1))
                var ccc = self.NAME[self.CURX, self.CURY]
                if ((ccc != " ") && ((ccc != "　") && ((ccc != ">") && (ccc != "<"))))
                    found = 1
            } until found;
            
        }
        else if ((dy != 0) && (self.YMAX > 0))
        {
            found = 0
            do {
                self.CURY = (((self.CURY + (self.YMAX + 1)) + dy) % (self.YMAX + 1))
                var move = 1
                ccc = ""
                if move
                {
                    ccc = self.NAME[self.CURX, self.CURY]
                    if (ccc == ">")
                        self.CURX += 1
                    else if (ccc == "<")
                        self.CURX -= 1
                    else
                        move = 0
                    while move
                    {
                        ccc = self.NAME[self.CURX, self.CURY]
                        if (ccc == ">")
                            self.CURX += 1
                        else if (ccc == "<")
                            self.CURX -= 1
                        else
                            move = 0
                    }
                }
                if ((ccc != " ") && (ccc != "　"))
                    found = 1
            } until found;
            
        }
    }
}
else if ((self.fadebuffer < 0) && (self.FINISH == 0))
{
    if right_p()
        self.CURX = 1
    if left_p()
        self.CURX = 0
}
if ((self.TYPE >= 0) && (self.TYPE <= 2))
{
    self.DRAWHEART = 1
    if (self.CURX >= 0)
    {
        self.IDEALX = self.NAMEX[self.CURX, self.CURY]
        self.IDEALY = self.NAMEY[self.CURX, self.CURY]
        if (self.TYPE == 0)
        {
            scr_84_set_draw_font("main")
            self.IDEALX += ((string_width(self.NAME[self.CURX, self.CURY]) / 2) - 10)
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
    self.HEARTX += self.HEARTDIFF
    if (self.DRAWHEART == 0)
    {
        self.HEARTX = self.IDEALX
        self.DRAWHEART = 1
    }
    self.HEARTDIFF = ((self.IDEALY - self.HEARTY) * 0.3)
    self.HEARTY += self.HEARTDIFF
    if (self.DRAWHEART == 0)
    {
        self.HEARTY = self.IDEALY
        self.DRAWHEART = 1
    }
    if (self.FINISH == 0)
    {
        if (button1_p() && ((self.CURX >= 0) && (self.ONEBUFFER < 0)))
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
    var str = self.NAME[self.CURX, self.CURY]
    var cmd = ""
    if (string_length(str) > 1)
    {
        cmd = string_char_at(str, 2)
        str = string_copy(str, 4, (string_length(str) - 3))
    }
    scr_84_set_draw_font("main")
    self.IDEALX = ((self.NAMEX[self.CURX, self.CURY] + (string_width(str) / 2)) - 10)
    self.IDEALY = (self.NAMEY[self.CURX, self.CURY] - 2)
    if (abs((self.HEARTX - self.IDEALX)) <= 2)
        self.HEARTX = self.IDEALX
    if (abs((self.HEARTY - self.IDEALY)) <= 2)
        self.HEARTY = self.IDEALY
    self.HEARTDIFF = ((self.IDEALX - self.HEARTX) * 0.5)
    if (abs(self.HEARTDIFF) > 60)
        self.DRAWHEART = 0
    self.HEARTX += self.HEARTDIFF
    if (self.DRAWHEART == 0)
    {
        self.HEARTX = self.IDEALX
        self.DRAWHEART = 1
    }
    self.HEARTDIFF = ((self.IDEALY - self.HEARTY) * 0.5)
    if (abs(self.HEARTDIFF) > 60)
        self.DRAWHEART = 0
    self.HEARTY += self.HEARTDIFF
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
        if (button1_p() && (self.ONEBUFFER < 0))
        {
            if (cmd == "")
            {
                if (string_length(self.NAMESTRING) < self.STRINGMAX)
                    self.NAMESTRING += self.NAME[self.CURX, self.CURY]
            }
            if (cmd == "B")
                self.ERASE = 1
            if ((cmd == "1") || ((cmd == "2") || (cmd == "3")))
            {
                var new_type = real(cmd)
                if (self.LANGSUBTYPE != new_type)
                {
                    self.LANGSUBTYPE = new_type
                    scr_84_name_input_setup()
                }
            }
            if ((cmd == "E") && ((self.ONEBUFFER < 0) && (string_length(self.NAMESTRING) >= 1)))
            {
                self.ONEBUFFER = 99
                self.FINISH = 1
                global.choice = 1
            }
        }
    }
    if ((self.ERASE == 1) && (self.FINISH == 0))
    {
        if (string_length(self.NAMESTRING) > 0)
            self.NAMESTRING = string_delete(self.NAMESTRING, string_length(self.NAMESTRING), 1)
    }
}
self.ONEBUFFER -= 1
if (self.FINISH == 0)
    self.fadebuffer -= 1
if (self.FINISH == 1)
{
    global.flag[20] = 1
    if (self.fadebuffer < 0)
        self.fadebuffer = 0
    self.fadebuffer += 1
    if (self.fadebuffer >= 10)
        instance_destroy()
}
