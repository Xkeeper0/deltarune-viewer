global.keyitem[12] = self.argument1
self.i = self.argument0
while(true)
{
    if (self.i < 12)
    {
        global.keyitem[self.i] = global.keyitem[(self.i + 1)]
        self.i = (self.i + 1)
        continue
    }
    break
}
scr_keyiteminfo_all()
