if (instance_exists(self.target) == 0)
{
    self.con = 99
    instance_destroy()
}
if (self.con == 1)
{
    if (self.fail == 0)
    {
        self.siner = (self.siner + 1)
        self.target.image_blend = merge_color(self.target.image_blend, self.flashcolor, 0.1)
        if ((self.siner % 2) == 0)
        {
            self.ai = instance_create((self.target.x + random(self.target.sprite_width)), ((self.target.y + self.target.sprite_height) - 20), obj_afterimage)
            self.ai.gravity = 0.5
            self.ai.sprite_index = spr_savepoint
            self.ai.image_speed = 0.2
        }
        self.target.x = (self.target.x + ((self.siner / 4) + (sin((self.siner / 8)) * 10)))
        self.target.y = (self.target.y - (self.siner / 5))
    }
    else
    {
        self.siner = 0
        self.con = 5
    }
}
if (self.con == 2)
{
    with(self.target)
    {
        instance_destroy()
    }
    instance_destroy()
}
if (instance_exists(self.target) == 0)
{
    self.con = 99
    instance_destroy()
}
if (self.con == 5)
{
    self.con = 6
    self.alarm[4] = 8
}
if (self.con == 6)
    self.target.image_blend = merge_color(self.target.image_blend, self.flashcolor, 0.12)
if (self.con == 7)
{
    self.con = 8
    self.alarm[4] = 8
}
if (self.con == 8)
    self.target.image_blend = merge_color(self.target.image_blend, 0xFFFFFF, 0.16)
if (self.con == 9)
{
    self.target.image_blend = 0xFFFFFF
    instance_destroy()
}
