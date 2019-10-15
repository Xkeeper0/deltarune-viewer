self.cur_alpha = self.battlealpha
if (obj_mainchara.battlemode == 1)
{
    if (self.battlealpha < 0.5)
        self.battlealpha = (self.battlealpha + 0.04)
}
else
{
    if (self.battlealpha > 0)
        self.battlealpha = (self.battlealpha - 0.04)
}
if (self.tile_fade == 1)
{
    if (self.cur_alpha != self.battlealpha)
    {
        local.i = 0
        while(true)
        {
            if (local.i < array_length_1d(self.tilearray))
            {
                tile_set_alpha(self.tilearray[local.i], (self.battlealpha * 2))
                local.i = (local.i + 1)
                continue
            }
            break
        }
    }
}
draw_set_alpha(self.battlealpha)
draw_set_color(0x000000)
draw_rectangle((__view_get(e__VW.XView, 0) - 100), (__view_get(e__VW.YView, 0) - 100), (__view_get(e__VW.XView, 0) + 740), (__view_get(e__VW.YView, 0) + 540), 0)
draw_set_alpha(1)
if instance_exists(obj_caterpillarchara)
{
    obj_caterpillarchara.image_blend = merge_color(0xFFFFFF, 0x000000, self.battlealpha)
    if (self.battlealpha <= 0)
        obj_caterpillarchara.image_blend = 0xFFFFFF
}
