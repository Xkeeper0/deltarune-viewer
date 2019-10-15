if (scr_monsterpop() > 0)
{
    self.i = 0
    while(true)
    {
        if (self.i < 3)
        {
            if (self.target == self.i)
            {
                if instance_exists(global.charinstance[self.i])
                {
                    global.charinstance[self.i].points = self.points[self.i]
                    with(global.charinstance[self.i])
                    {
                        self.state = 1
                        self.attacktimer = 0
                    }
                }
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
