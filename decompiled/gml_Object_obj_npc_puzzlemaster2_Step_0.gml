if (self.myinteract == 3)
{
    if (instance_exists(self.mydialoguer) == 0)
    {
        global.interact = 0
        self.myinteract = 0
        with(obj_mainchara)
        {
            self.onebuffer = 5
        }
    }
}
