self.scrollspeed[0] = 0.1
self.scrollspeed[1] = 0.3
self.scrollspeed[2] = 0.5
self.scrollspeed[3] = 0.6
self.scrollspeed[4] = 0.7
self.scrollspeed[5] = 0.8
self.scrollspeed[6] = 0.9
for (self.i = 0; self.i < 7; self.i += 1)
{
    self.xxx = __view_get(0, 0)
    if (self.xxx > (self.room_width - 640))
        self.xxx = (self.room_width - 640)
    if (self.xxx >= 0)
        __background_set(3, self.i, floor((self.xxx - (self.xxx * self.scrollspeed[self.i]))))
    self.gg = (self.room_width - 640)
    if (self.xxx >= (self.room_width - 640))
        __background_set(3, self.i, (0 + floor((self.gg - (self.gg * self.scrollspeed[self.i])))))
}
