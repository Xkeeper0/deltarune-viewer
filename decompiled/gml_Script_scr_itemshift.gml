global.item[12] = self.argument1
self.i = self.argument0
while(true)
{
    if (self.i < 12)
    {
        global.item[self.i] = global.item[(self.i + 1)]
        self.i = (self.i + 1)
        continue
    }
    break
}
scr_iteminfo_all()
scr_itemname()
