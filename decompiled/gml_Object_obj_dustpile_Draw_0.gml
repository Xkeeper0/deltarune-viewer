draw_sprite_ext(spr_dustpile_parts, 3, self.x, self.y, 2, 2, 0, 0x00FFFFFF, self.image_alpha)
if (self.bust == 0)
{
    draw_sprite_ext(spr_dustpile_parts, 2, (self.x - sin((self.siner / 5))), (self.y + sin((self.siner / 5))), 2, 2, 0, 0x00FFFFFF, self.image_alpha)
    draw_sprite_ext(spr_dustpile_parts, 1, (self.x + cos((self.siner / 5))), ((self.y + sin((self.siner / 5))) + 1), 2, 2, 0, 0x00FFFFFF, self.image_alpha)
    draw_sprite_ext(spr_dustpile_parts, 0, (self.x + sin((self.siner / 5))), (self.y + sin((self.siner / 5))), 2, 2, 0, 0x00FFFFFF, self.image_alpha)
}
