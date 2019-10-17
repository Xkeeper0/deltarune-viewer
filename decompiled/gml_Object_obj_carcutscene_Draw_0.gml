if instance_exists(self.myd)
{
    self.depth = (self.myd.depth + 1000)
    draw_set_color(0x00000000)
    draw_set_alpha(0.15)
    self.prevalpha[0] = 1
    self.prevwx[0] = self.myd.writingx
    self.prevwy[0] = self.myd.writingy
    self.prevstringmax[0] = self.myd.stringmax
    self.prevhspace[0] = self.myd.hspace
    self.prevlinecount[0] = self.myd.linecount
    self.prevvspace[0] = self.myd.vspace
    for (self.i = 6; self.i > 0; self.i -= 1)
    {
        self.prevalpha[self.i] = self.prevalpha[(self.i - 1)]
        self.prevwx[self.i] = self.prevwx[(self.i - 1)]
        self.prevwy[self.i] = self.prevwy[(self.i - 1)]
        self.prevstringmax[self.i] = self.prevstringmax[(self.i - 1)]
        self.prevhspace[self.i] = self.prevhspace[(self.i - 1)]
        self.prevlinecount[self.i] = self.prevlinecount[(self.i - 1)]
        self.prevvspace[self.i] = self.prevvspace[(self.i - 1)]
        if (self.prevalpha[self.i] > 0)
            draw_rectangle(((self.prevwx[0] - 10) - self.i), ((self.prevwy[0] - 10) - self.i), (((self.prevwx[0] + (self.prevstringmax[0] * self.prevhspace[0])) + 10) + self.i), (((self.prevwy[0] + ((self.prevlinecount[0] + 1) * self.prevvspace[0])) + 15) + self.i), 0)
    }
    draw_set_alpha(1)
}
