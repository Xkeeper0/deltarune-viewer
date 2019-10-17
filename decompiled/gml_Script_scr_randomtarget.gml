self.abletotarget = 1
if ((global.charcantarget[0] == 0) && ((global.charcantarget[1] == 0) && (global.charcantarget[2] == 0)))
    self.abletotarget = 0
self.mytarget = choose(0, 1, 2)
if (self.abletotarget == 1)
{
    while (global.charcantarget[self.mytarget] == 0)
        self.mytarget = choose(0, 1, 2)
}
else
    self.mytarget = 3
global.targeted[self.mytarget] = 1
