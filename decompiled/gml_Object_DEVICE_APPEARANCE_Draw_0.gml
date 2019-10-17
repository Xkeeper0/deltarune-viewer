if (self.t <= 0)
{
    self.xs = (1 + (self.t / 10))
    if (self.xs < 0)
        self.xs = 0
    draw_sprite_part_ext(self.sprite_index, 0, 0, self.m, self.sprite_width, 1, ((self.x - ((self.sprite_width / 2) * self.xs)) + (self.sprite_width / 2)), ((self.y + self.m) - 400), self.xs, 800, 0x00FFFFFF, 1)
}
if ((self.t > 0) && (self.t < self.m))
{
    draw_sprite_part(self.sprite_index, 0, 0, (self.m - self.t), self.sprite_width, (1 + (self.t * 2)), self.x, ((self.y - self.t) + self.m))
    draw_sprite_part_ext(self.sprite_index, 0, 0, ((self.m - self.t) - 1), self.sprite_width, 1, self.x, (((self.y - 400) - self.t) + self.m), 1, 400, 0x00FFFFFF, 1)
    draw_sprite_part_ext(self.sprite_index, 0, 0, (self.m + self.t), self.sprite_width, 1, self.x, ((self.y + self.t) + self.m), 1, 400, 0x00FFFFFF, 1)
}
if (self.t >= self.m)
    draw_sprite(self.sprite_index, 0, self.x, self.y)
if (self.momentum > 0)
{
    if (self.t < (self.tmax + 2))
        self.t += self.momentum
}
if (self.momentum < 0)
    self.t += self.momentum
