self.con = 1
self.x = 400
self.y = 300
self.bush_debris = 0
self.bush = scr_dark_marker(305, 20, spr_susiebush)
with(self.bush)
{
    self.depth = 850000
    self.image_speed = 0
    self.image_index = 0
}
self.i = 0
while(true)
{
    if (self.i < 6)
    {
        self.stat[self.i] = 0
        self.i = (self.i + 1)
        continue
    }
    break
}
if (global.flag[226] == 1)
{
    with(self.bush)
    {
        self.image_index = 1
    }
    event_user(1)
    self.con = 999
    instance_destroy()
}
