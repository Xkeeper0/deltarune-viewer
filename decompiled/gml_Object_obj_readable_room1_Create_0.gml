self.myinteract = 0
self.image_speed = 0
self.read = 0
self.tempvar = 0
if (self.room == room_dark3a)
{
    if (global.flag[100] == 0)
    {
        self.shine = scr_dark_marker((self.x + 10), (self.y + 6), spr_shine)
        self.shine.image_speed = 0.1
    }
}
