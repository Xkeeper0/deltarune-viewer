self.collidetimer = (self.collidetimer - 1)
if (self.collidetimer < 0)
{
    if (self.collide == 1)
        _temp_local_var_1 = (global.interact == 1)
    else
        _temp_local_var_1 = 0
}
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.collide = 0
    global.interact = 0
    if (self.collider >= 10)
    {
        if (self.abovey == 1)
        {
            with(obj_mainchara)
            {
                self.fun = 0
                self.sprite_index = spr_krisd
            }
            snd_stop(self.slide_noise)
        }
        instance_create(self.x, ((self.y + self.sprite_height) - 40), obj_soliddark)
        instance_destroy()
    }
}
