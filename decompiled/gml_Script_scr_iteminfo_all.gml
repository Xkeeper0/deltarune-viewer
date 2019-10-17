for (self.i = 0; self.i < 12; self.i += 1)
{
    self.itemid = global.item[self.i]
    scr_iteminfo(self.itemid)
    global.itemnameb[self.i] = self.itemnameb
    global.itemdescb[self.i] = self.itemdescb
    global.itemvalue[self.i] = self.value
    global.itemusable[self.i] = self.usable
}
