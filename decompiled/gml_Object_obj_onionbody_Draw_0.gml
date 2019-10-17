self.siner += 1
if ((self.on >= 1) && (self.on <= 4))
{
    if ((self.on == 1) && (self.special == 1))
        self.special = 2
    if ((self.on == 1) || ((self.on == 2) || (self.on == 3)))
    {
        if (self.onion_blue_alpha < 1)
            self.onion_blue_alpha += 0.05
    }
    draw_sprite_ext(spr_onionblue, 0, self.x, self.y, ((0.1 + self.onion_blue_alpha) + (sin((self.siner / 4)) * 0.05)), (self.onion_blue_alpha + (sin((self.siner / 4)) * 0.05)), 0, 0x00FFFFFF, self.onion_blue_alpha)
}
if ((self.on == 2) || ((self.on == 3) || (self.on == 4)))
{
    if (global.flag[20] == 0)
        self.onionsprite = spr_onionsan_kawaii
    if (global.flag[20] == 1)
        self.onionsprite = spr_onionsan_yhear
    if (global.flag[20] == 2)
        self.onionsprite = spr_onionsan_wistful
    if (global.flag[20] == 3)
        self.onionsprite = spr_onionsan_disappoint
    if (global.flag[20] == 4)
        self.onionsprite = spr_onionsan_sing
    if (global.flag[20] == 5)
        self.onionsprite = 257
    draw_sprite_part(self.onionsprite, floor((self.siner / 6)), 0, 0, 63, floor(self.onionh), (self.x - 32), (self.y - floor(self.onionh)))
    if ((self.on == 2) || (self.on == 3))
    {
        if (self.onionh < 63)
            self.onionh += 0.5
    }
    if (self.on == 4)
    {
        if (self.onionh > 0)
            self.onionh -= 0.5
        else if (self.onion_blue_alpha > 0)
            self.onion_blue_alpha -= 0.05
    }
}
