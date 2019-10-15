self._ti = 0
while(true)
{
    if (self._ti < 3)
    {
        if (global.charcantarget[self._ti] == 1)
            global.targeted[self._ti] = 1
        self._ti = (self._ti + 1)
        continue
    }
    break
}
self.mytarget = 3
self.target = 3
