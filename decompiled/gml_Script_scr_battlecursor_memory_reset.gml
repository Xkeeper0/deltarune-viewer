if (global.flag[14] == 0)
{
    self.i = 0
    while(true)
    {
        if (self.i < 20)
        {
            self.j = 0
            while(true)
            {
                if (self.j < 20)
                {
                    global.bmenucoord[self.i][self.j] = 0
                    self.j = (self.j + 1)
                    continue
                }
                break
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
