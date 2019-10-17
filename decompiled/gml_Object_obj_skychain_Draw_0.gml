draw_self()
self.can = 0
if (self.y < -20)
    self.can = 1
if (self.x < (__view_get(0, 0) - 20))
    self.can = 1
if (self.x > (__view_get(0, 0) + 660))
    self.can = 1
if (self.can == 1)
{
    draw_set_color(0x000000FF)
    draw_line(self.x, self.y, (self.x + lengthdir_x(1000, self.direction)), (self.y + lengthdir_y(1000, self.direction)))
}
if ((self.can == 0) && (self.soundcon == 0))
{
    snd_play(snd_spearrise)
    self.soundcon = 1
}
