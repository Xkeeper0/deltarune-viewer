if (self.open == 1)
{
    self.xsin += 0.01
    if (self.xsin > 1)
        self.xsin = 1
    self.siner += 1
    self.image_index = 1
    self.amt = (sin((self.siner / 16)) * 0.1)
    draw_background_ext(bg_darkdoor_open, 0, 0, 1, 1, 0, 0x00FFFFFF, (self.xsin + self.amt))
    for (self.i = 1; self.i < 6; self.i += 1)
        draw_sprite_ext(self.sprite_index, 2, self.x, (self.y + self.sprite_height), 1, ((3 / self.i) + self.amt), 0, 0x00FFFFFF, (self.xsin * (self.amt + 0.2)))
    self.ht = ((self.amt * self.sprite_height) * 3)
    self.wt = ((self.amt * self.sprite_width) * 3)
    draw_sprite_ext(self.sprite_index, 2, (self.x - (self.wt / 2)), (self.y - self.ht), (1 + (self.amt * 3)), (1 + (self.amt * 3)), 0, 0x00FFFFFF, (self.xsin * (self.amt + 0.2)))
    self.ht = ((self.amt * self.sprite_height) * 2)
    self.wt = ((self.amt * self.sprite_width) * 2)
    draw_sprite_ext(self.sprite_index, 2, (self.x - (self.wt / 2)), (self.y - self.ht), (1 + (self.amt * 2)), (1 + (self.amt * 2)), 0, 0x00FFFFFF, (self.xsin * (self.amt + 0.2)))
}
draw_self()
