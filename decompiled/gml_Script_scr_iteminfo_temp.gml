self.i = 0
while(true)
{
    if (self.i < 12)
    {
        self.itemid = self.tempitem[self.i][self.argument0]
        scr_iteminfo(self.itemid)
        self.tempitemnameb[self.i][self.argument0] = self.itemnameb
        self.tempitemdescb[self.i][self.argument0] = self.itemdescb
        self.tempitemvalue[self.i][self.argument0] = self.value
        self.tempitemusable[self.i][self.argument0] = self.usable
        self.i = (self.i + 1)
        continue
    }
    break
}
