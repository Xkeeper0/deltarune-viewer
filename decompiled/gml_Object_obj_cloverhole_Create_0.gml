scr_depth()
self.image_xscale = 2
self.image_yscale = 2
self.holecon = 0
self.image_speed = 0
self.distance = 9999
self.type = 0
self.maxdist = 80
if (self.room == room_forest_area3)
{
    if (self.x < 600)
        self.type = 0
    else
    {
        self.type = 1
        if (self.x >= 1000)
            self.type = 2
    }
    if (global.plot >= 75)
        self.holecon = 999
}
self.sprite_type[0] = 529
self.sprite_type[1] = 531
self.sprite_type[2] = 530
