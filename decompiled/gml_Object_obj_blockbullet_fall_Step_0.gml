if (self.con == 1)
{
    self.active = 1
    self.visible = 1
    self.image_alpha = (self.image_alpha + 0.15)
    if (self.image_alpha >= 1)
        self.con = 2
}
if (self.con == 2)
{
    self.falltimer = (self.falltimer + 1)
    if (self.falltimer >= self.fallspeed)
    {
        if (self.ypos < 0)
            _temp_local_var_1 = (~ collision_point((self.x + (self.sprite_width / 2)), (self.y + (self.sprite_height * 1.5)), obj_blockbullet_fall, 0, 1))
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
            self.ypos = (self.ypos + 1)
        else
            self.halt = 1
        self.falltimer = 0
    }
}
if (self.con == 0)
    self.con = 1
if (self.con == 3)
{
    if (self.image_alpha <= 0.2)
        instance_destroy()
    self.active = 0
    self.image_alpha = (self.image_alpha - 0.2)
}
if instance_exists(obj_battlesolid)
{
    self.lx = ((obj_battlesolid.x - (obj_battlesolid.sprite_width / 2)) + 8)
    self.x = (self.lx + (self.xpos * self.sprite_width))
    self.yx = (((obj_battlesolid.y + (obj_battlesolid.sprite_height / 2)) - 3) - self.sprite_height)
    self.y = (self.yx + (self.ypos * self.sprite_height))
}
if (self.grazed == 1)
{
    self.grazepoints = 0
    self.timepoints = 0
}
