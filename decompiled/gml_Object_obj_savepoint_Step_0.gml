if (self.myinteract == 3)
{
    if (instance_exists(self.mydialoguer) == 0)
    {
        instance_create(0, 0, obj_savemenu)
        self.myinteract = 0
    }
}
