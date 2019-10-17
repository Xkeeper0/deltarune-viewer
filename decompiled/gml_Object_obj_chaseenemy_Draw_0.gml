if (self.facing == 0)
    draw_sprite_ext(self.sprite_index, self.walk_index, self.x, self.y, self.image_xscale, self.image_yscale, self.image_angle, self.image_blend, self.image_alpha)
if (self.facing == 1)
    draw_sprite_ext(self.sprite_index, self.walk_index, (self.x + self.sprite_width), self.y, (-self.image_xscale), self.image_yscale, self.image_angle, self.image_blend, self.image_alpha)
if scr_debug()
{
    draw_set_color(0x000000FF)
    draw_rectangle((self.targetx - 2), (self.targety - 2), (self.targetx + 2), (self.targety + 2), 0)
    draw_set_color(0x00FFFF00)
    draw_rectangle(((self.targetx - 2) + (self.sprite_width / 2)), ((self.targety - 2) + (self.sprite_height / 2)), ((self.targetx + 2) + (self.sprite_width / 2)), ((self.targety + 2) + (self.sprite_height / 2)), 0)
}
