self.i = 0
while(true)
{
    if (self.i < 12)
    {
        self.itemid = global.item[self.i]
        scr_itemnamelist()
        self.i = (self.i + 1)
        continue
    }
    break
}
