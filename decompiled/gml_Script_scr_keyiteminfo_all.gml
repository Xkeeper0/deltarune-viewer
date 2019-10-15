self.i = 0
while(true)
{
    if (self.i < 12)
    {
        self.keyitemid = global.keyitem[self.i]
        self.keyitemname[self.i] = " "@24
        scr_keyiteminfo(self.keyitemid)
        self.keyitemusable[self.i] = self.tempkeyitemusable
        self.keyitemname[self.i] = self.tempkeyitemname
        self.keyitemdesc[self.i] = self.tempkeyitemdesc
        self.i = (self.i + 1)
        continue
    }
    break
}
