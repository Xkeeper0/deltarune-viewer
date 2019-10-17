self.collidetimer -= 1
if ((self.collidetimer < 0) && ((self.collide == 1) && (global.interact == 1)))
{
    self.collide = 0
    global.interact = 0
    if (self.collider >= 10)
    {
        if (self.abovey == 1)
        {
            with (obj_mainchara)
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
