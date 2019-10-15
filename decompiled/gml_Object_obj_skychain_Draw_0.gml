draw_self()
self.can = 0
if (self.y < -20)
    self.can = 1
if (self.x < (__view_get(e__VW.XView, 0) - 20))
    self.can = 1
if (self.x > (__view_get(e__VW.XView, 0) + 660))
    self.can = 1
if (self.can == 1)
{
    draw_set_color(0x0000FF)
    draw_line(self.x, self.y, (self.x + lengthdir_x(1000, self.direction)), (self.y + lengthdir_y(1000, self.direction)))
}
if (self.can == 0)
    _temp_local_var_1 = (self.soundcon == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    snd_play(snd_spearrise)
    self.soundcon = 1
}
