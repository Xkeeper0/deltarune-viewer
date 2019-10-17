if (self.argument2 == 0)
{
    self.mywriter = instance_create(self.argument0, self.argument1, obj_writer)
    return self.mywriter;
}
if (self.argument2 == 1)
{
    self.myblcon = instance_create(self.argument0, self.argument1, obj_battleblcon)
    return self.myblcon;
}
if (self.argument2 == 2)
{
    self.myblcon = instance_create(self.argument0, self.argument1, obj_battleblcon)
    self.myblcon.sprite_index = spr_battleblcon_v
    return self.myblcon;
}
if (self.argument2 == 3)
{
    self.myblcon = instance_create(self.argument0, self.argument1, obj_battleblcon)
    self.myblcon.sprite_index = spr_battleblcon_long
    return self.myblcon;
}
if (self.argument2 == 4)
{
    self.myblcon = instance_create(self.argument0, self.argument1, obj_battleblcon)
    self.myblcon.sprite_index = spr_battleblcon_clubs
    self.myblcon.image_index = 0
    self.myblcon.image_speed = 0
    return self.myblcon;
}
if (self.argument2 == 5)
{
    self.myblcon = instance_create(self.argument0, self.argument1, obj_battleblcon)
    self.myblcon.sprite_index = spr_battleblcon_clubs
    self.myblcon.image_index = 1
    self.myblcon.image_speed = 0
    return self.myblcon;
}
if (self.argument2 == 6)
{
    self.myblcon = instance_create(self.argument0, self.argument1, obj_battleblcon)
    self.myblcon.sprite_index = spr_battleblcon_clubs
    self.myblcon.image_index = 2
    self.myblcon.image_speed = 0
    return self.myblcon;
}
if (self.argument2 == 7)
{
    self.myblcon = instance_create(self.argument0, self.argument1, obj_battleblcon)
    self.myblcon.sprite_index = spr_battleblcon_long_r
    self.myblcon.image_index = 2
    self.myblcon.image_speed = 0
    return self.myblcon;
}
if (self.argument2 == 8)
{
    self.myblcon = instance_create(self.argument0, self.argument1, obj_battleblcon)
    self.myblcon.sprite_index = spr_battleblcon_long_tall
    return self.myblcon;
}
