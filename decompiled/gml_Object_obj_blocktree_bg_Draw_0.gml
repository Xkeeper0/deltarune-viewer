self.siner += 1
if (self.spec < 2)
{
    draw_sprite_ext(spr_blocktree_parts, 1, self.x, self.y, 2, 2, 0, self.image_blend, 1)
    draw_sprite_ext(spr_blocktree_parts, 2, (self.x + (sin((self.siner / 12)) * 2)), (self.y + (cos((self.siner / 20)) * 2)), 2, 2, 0, self.image_blend, 1)
    draw_sprite_ext(spr_blocktree_parts, 3, (self.x + (sin((self.siner / 14)) * 1)), (self.y + (cos((self.siner / 24)) * 1)), 2, 2, 0, self.image_blend, 1)
}
else
    draw_sprite_ext(spr_blocktree_switch, (self.siner / 6), self.x, self.y, 2, 2, 0, self.image_blend, 1)
