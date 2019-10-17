if (self.grazetimer > 0)
{
    draw_sprite_ext(self.sprite_index, 0, self.x, self.y, 1, 1, 0, 0x00FFFFFF, (self.grazetimer / 6))
    draw_sprite_ext(self.sprite_index, 3, self.x, self.y, 1, 1, 0, 0x00FFFFFF, ((self.grazetimer / 6) - 0.2))
}
self.grazetimer -= 1
