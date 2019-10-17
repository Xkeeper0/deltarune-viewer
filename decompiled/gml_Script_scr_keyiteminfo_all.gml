for (self.i = 0; self.i < 12; self.i += 1)
{
    self.keyitemid = global.keyitem[self.i]
    self.keyitemname[self.i] = " "
    scr_keyiteminfo(self.keyitemid)
    self.keyitemusable[self.i] = self.tempkeyitemusable
    self.keyitemname[self.i] = self.tempkeyitemname
    self.keyitemdesc[self.i] = self.tempkeyitemdesc
}
