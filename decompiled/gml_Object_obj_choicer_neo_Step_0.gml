global.flag[33] = (global.flag[33] + 1)
if (self.canchoose == 1)
{
    if (self.mychoice >= 0)
    {
        if button1_p()
            event_user(0)
    }
    if (self.choiced == 0)
    {
        if left_h()
            self.mychoice = 0
        if (self.choicetotal >= 1)
        {
            if right_h()
                self.mychoice = 1
        }
        if (self.choicetotal >= 2)
        {
            if up_h()
                self.mychoice = 2
        }
        if (self.choicetotal >= 3)
        {
            if down_h()
                self.mychoice = 3
        }
    }
}
if (self.dar == 1)
    scr_84_set_draw_font("main"@1558)
else
    scr_84_set_draw_font("mainbig"@1561)
self.heartposx[0] = (self.xx + (30 * self.dar))
self.heartposy[0] = (self.yy + ((34 + self.d_add) * self.dar))
self.textposx[0] = (self.heartposx[0] + (16 * self.dar))
self.textposy[0] = (self.yy + ((13 + self.d_add) * self.dar))
if (self.choicetotal >= 1)
{
    local.str1width = string_width(string_hash_to_newline(global.choicemsg[1]))
    self.heartposx[1] = ((((self.xx + (320 * self.dar)) - (30 * self.dar)) - local.str1width) - (14 * self.dar))
    self.heartposy[1] = (self.yy + ((34 + self.d_add) * self.dar))
    self.textposx[1] = (self.heartposx[1] + (16 * self.dar))
    self.textposy[1] = (self.yy + ((13 + self.d_add) * self.dar))
}
if (self.choicetotal >= 2)
{
    local.msg0right = ((self.heartposx[0] + (16 * self.dar)) + string_width(string_hash_to_newline(global.choicemsg[0])))
    local.msg1left = self.heartposx[1]
    local.msg2width = (string_width(string_hash_to_newline(global.choicemsg[2])) + (16 * self.dar))
    if (self.choicetotal == 3)
    {
        local.msg3width = (string_width(string_hash_to_newline(global.choicemsg[3])) + (16 * self.dar))
        if (local.msg3width > local.msg2width)
            local.msg2width = local.msg3width
    }
    self.heartposx[2] = ((local.msg0right + ((local.msg1left - local.msg0right) / 2)) - (local.msg2width / 2))
    self.heartposy[2] = (self.yy + ((16 + self.d_add) * self.dar))
    self.textposx[2] = (self.heartposx[2] + (16 * self.dar))
    self.textposy[2] = (self.yy + ((13 + self.d_add) * self.dar))
}
if (self.choicetotal >= 3)
{
    self.heartposx[3] = self.heartposx[2]
    self.heartposy[3] = (self.yy + ((60 + self.d_add) * self.dar))
    self.textposx[3] = (self.heartposx[3] + (16 * self.dar))
    self.textposy[3] = (self.yy + ((56 + self.d_add) * self.dar))
}
if (self.mychoice >= 0)
{
    self.hx = self.heartposx[self.mychoice]
    self.hy = self.heartposy[self.mychoice]
}
