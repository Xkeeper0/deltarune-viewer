if (self.walkcon == 1)
{
    self.visible = 0
    self.wings = scr_dark_marker((self.x + 92), (self.y + 74), spr_starwalker_wings)
    self.wings.image_index = self.image_index
    with (self.wings)
    {
        self.image_speed = 0.2
        self.depth = 1010
        self.hspeed = 5
        self.vspeed = -1
        self.gravity_direction = 90
        self.gravity = 0.2
    }
    self.body = scr_dark_marker((self.x + 70), (self.y + 52), spr_starwalker_walk)
    with (self.body)
    {
        self.depth = 1000
        self.image_speed = 0
        self.vspeed = 8
        self.image_speed = 0
    }
    self.walkcon = 2
}
if (self.walkcon == 2)
{
    with (self.body)
        scr_depth()
    self.walktimer += 1
    if (self.walktimer >= 20)
    {
        self.hspeed = 7
        with (self.body)
        {
            self.vspeed = 0
            self.hspeed = 7
            self.image_speed = 0.25
        }
        self.bodycheck = instance_create(self.body.x, (self.body.y + 20), obj_readable_room1)
        self.bodycheck.image_xscale = 2
        self.bodycheck.image_yscale = 2
        with (self.bodycheck)
            self.hspeed = 7
        self.walkcon = 3
        self.walktimer = 0
    }
}
