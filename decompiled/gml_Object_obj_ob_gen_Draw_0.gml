if (obj_mainchara.battlemode == 1)
{
    if (self.battlealpha < 0.8)
        self.battlealpha += 0.04
}
else if (self.battlealpha > 0)
    self.battlealpha -= 0.04
draw_set_alpha(self.battlealpha)
draw_set_color(0x00000000)
draw_rectangle((__view_get(0, 0) - 100), (__view_get(1, 0) - 100), (__view_get(0, 0) + 740), (__view_get(1, 0) + 540), 0)
draw_set_alpha(1)
if instance_exists(obj_caterpillarchara)
{
    obj_caterpillarchara.image_blend = merge_color(0x00FFFFFF, 0x00000000, (self.battlealpha / 2))
    if (self.battlealpha <= 0)
        obj_caterpillarchara.image_blend = 0x00FFFFFF
}
if (self.whitecon == 1)
{
    with (obj_mainchara)
        self.battlemode = 0
    self.whitetimer += 1
    draw_set_alpha((self.whitetimer / 15))
    draw_set_color(0x00FFFFFF)
    draw_rectangle(-100, -100, (__view_get(0, 0) + 740), (__view_get(1, 0) + 540), 0)
    draw_set_alpha(1)
}
if (self.whitecon == 2)
{
    self.whitetimer -= 1
    draw_set_alpha((self.whitetimer / 15))
    draw_set_color(0x00FFFFFF)
    draw_rectangle(-100, -100, (__view_get(0, 0) + 740), (__view_get(1, 0) + 540), 0)
    draw_set_alpha(1)
    if (self.whitetimer <= 0)
    {
        global.interact = 0
        self.whitecon = 0
        self.whitetimer = 0
    }
}
