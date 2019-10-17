self.removed = 0
scr_keyitemcheck(self.argument0)
if (self.haveit == 1)
{
    self.loc = 0
    self.skip = 0
    if ((global.keyitem[0] == self.argument0) && (self.skip == 0))
    {
        self.loc = 0
        self.skip = 1
    }
    if ((global.keyitem[1] == self.argument0) && (self.skip == 0))
    {
        self.loc = 1
        self.skip = 1
    }
    if ((global.keyitem[2] == self.argument0) && (self.skip == 0))
    {
        self.loc = 2
        self.skip = 1
    }
    if ((global.keyitem[3] == self.argument0) && (self.skip == 0))
    {
        self.loc = 3
        self.skip = 1
    }
    if ((global.keyitem[4] == self.argument0) && (self.skip == 0))
    {
        self.loc = 4
        self.skip = 1
    }
    if ((global.keyitem[5] == self.argument0) && (self.skip == 0))
    {
        self.loc = 5
        self.skip = 1
    }
    if ((global.keyitem[6] == self.argument0) && (self.skip == 0))
    {
        self.loc = 6
        self.skip = 1
    }
    if ((global.keyitem[7] == self.argument0) && (self.skip == 0))
    {
        self.loc = 7
        self.skip = 1
    }
    if ((global.keyitem[8] == self.argument0) && (self.skip == 0))
    {
        self.loc = 8
        self.skip = 1
    }
    if ((global.keyitem[9] == self.argument0) && (self.skip == 0))
    {
        self.loc = 9
        self.skip = 1
    }
    if ((global.keyitem[10] == self.argument0) && (self.skip == 0))
    {
        self.loc = 10
        self.skip = 1
    }
    if ((global.keyitem[11] == self.argument0) && (self.skip == 0))
    {
        self.loc = 11
        self.skip = 1
    }
    scr_keyitemshift(self.loc, 0)
    self.removed = 1
}
