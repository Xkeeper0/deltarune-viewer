if (self.normalanim == 1)
{
    if ((self.myinteract > 0) && instance_exists(obj_writer))
    {
        if (obj_writer.halt > 0)
        {
            self.image_speed = 0
            self.image_index = 0
        }
        if (obj_writer.halt == 0)
            self.image_speed = self.remanimspeed
    }
}
if ((self.normalanim == 1) || (self.normalanim == 2))
{
    if (self.myinteract == 0)
    {
        self.image_index = 0
        self.image_speed = 0
    }
}
