self.newx1 = lengthdir_x(self.radius, (self.rot + ((360 / self.trimax) * self.i)))
self.newy1 = lengthdir_y((self.radius / 2), (self.rot + ((360 / self.trimax) * self.i)))
self.newx2 = lengthdir_x(self.radius, (self.rot + ((360 / self.trimax) * (self.i + 1))))
self.newy2 = lengthdir_y((self.radius / 2), (self.rot + ((360 / self.trimax) * (self.i + 1))))
if (self.newy1 <= 0)
    self.newy1 = (self.newy1 * 0.6)
if (self.newy2 <= 0)
    self.newy2 = (self.newy2 * 0.6)
if (self.blackon == 0)
{
    draw_set_color(self.dkblue)
    self.blackon = 1
}
else
{
    self.blackon = 0
    draw_set_color(self.dkblue2)
}
