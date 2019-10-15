if (self.con < 2)
    draw_self()
if (self.con >= 2)
{
    self.explodedraw = (self.explodedraw + 1)
    draw_set_color(0xFFFFFF)
    draw_set_alpha((1.5 - (self.explodedraw / 10)))
    draw_circle(self.x, self.y, ((self.sprite_width / 2) + (self.explodedraw * 2)), 0)
    draw_set_alpha(1)
}
