self.i = 0
while(true)
{
    if (self.i < 12)
    {
        self.itemid = global.item[self.i]
        scr_iteminfo(self.itemid)
        global.itemnameb[self.i] = self.itemnameb
        global.itemdescb[self.i] = self.itemdescb
        global.itemvalue[self.i] = self.value
        global.itemusable[self.i] = self.usable
        self.i = (self.i + 1)
        continue
    }
    break
}
