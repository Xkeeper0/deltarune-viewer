if (self.active == 1)
{
    if (self.target != 3)
        scr_damage()
    if (self.target == 3)
        scr_damage_all()
    instance_destroy()
}
