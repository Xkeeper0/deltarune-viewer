self.oo = 0
if (self.spec == 1)
{
    if instance_exists(obj_darkponman_ow)
    {
        self.oo = (-0.8 + ((obj_darkponman_ow.battlealpha * obj_darkponman_ow.max_battlealpha) * 1.5))
        if (self.oo < 0)
            self.oo = 0
        if (self.oo > 1)
            self.oo = 1
        self.image_blend = merge_color(0x00FFFFFF, 0x00000000, self.oo)
    }
}
if (self.spec == 2)
{
    if instance_exists(obj_darkponman_ow)
    {
        self.oo = (4 - ((obj_darkponman_ow.battlealpha * obj_darkponman_ow.max_battlealpha) * 4))
        if (self.oo > 1)
            self.oo = 1
        if (self.oo < 0)
            self.oo = 0
        self.image_blend = merge_color(0x00FFFFFF, 0x00000000, self.oo)
    }
}
if (self.spec < 2)
    self.blocktimer += 1
if (self.blocktimer == 20)
{
    self.xv = ((self.x + (self.sprite_width / 4)) + random((self.sprite_width / 2)))
    self.yv = ((self.y + (self.sprite_height / 4)) + random((self.sprite_height / 4)))
    self.block = scr_dark_marker(self.xv, self.yv, spr_blocktree_block)
    with (self.block)
    {
        self.hspeed = (0.4 + random(1))
        self.vspeed = (0.7 + random(1.5))
        self.gravity_direction = 0
        self.gravity = 0.1
        self.image_alpha = 0
        self.friction = -0.1
    }
    self.block.depth = (self.depth - 1)
    self.block.image_blend = merge_color(0x00FFFFFF, 0x00000000, self.oo)
    if (self.oo >= 0.8)
    {
        with (self.block)
            instance_destroy()
    }
}
if ((self.blocktimer >= 20) && (self.blocktimer <= 30))
{
    with (self.block)
    {
        if (self.image_alpha < 1)
            self.image_alpha += 0.2
    }
}
if (self.blocktimer >= 38)
{
    with (self.block)
        self.image_alpha -= 0.1
}
if (self.blocktimer >= 48)
{
    self.blocktimer = 0
    with (self.block)
        instance_destroy()
}
