self.i = 0
self.loop = 1
self.noroom = 0
global.phone[8] = 999
while (self.loop == 1)
{
    if (global.phone[self.i] == 0)
    {
        global.phone[self.i] = self.argument0
        break
    }
    else if (self.i == 8)
    {
        self.noroom = 1
        break
    }
    else
    {
        self.i += 1
        continue
    }
}
scr_phonename()
