draw_set_alpha(self.FADEFACTOR)
if (self.WHITEFADE == 0)
    draw_set_color(0x00000000)
else
    draw_set_color(0x00FFFFFF)
draw_rectangle(-10, -10, 999, 999, 0)
draw_set_alpha(1)
if (self.FADEUP > 0)
{
    if (self.FADEFACTOR < 1)
        self.FADEFACTOR += self.FADEUP
}
