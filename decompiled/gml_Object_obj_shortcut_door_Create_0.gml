self.myinteract = 0
self.talked = 0
self.checked = 0
global.flag[32] = 0
self.image_xscale = 2
self.image_yscale = 2
self.con = 0
self.image_speed = 0
self.teleportmode = 0
self.door_destination = self.room
self.door_location = self.room
self.on = 1
self.weirdlight = scr_dark_marker((self.x + 6), (self.y + 96), spr_weirdlight)
with(self.weirdlight)
{
    self.depth = 895000
    self.image_speed = 0.125
}
if (global.plot < 60)
    self.on = 0
if (self.room == room_forest_fightsusie)
{
    if (global.plot < 154)
        self.on = 0
}
if (self.on == 0)
{
    self.sprite_index = spr_shortcut_door_off
    with(self.weirdlight)
    {
        instance_destroy()
    }
}
