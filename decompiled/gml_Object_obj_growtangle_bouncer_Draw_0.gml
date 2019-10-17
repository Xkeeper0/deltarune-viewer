draw_self()
if (self.fadein < 10)
    self.fadein += 1
draw_set_alpha((self.fadein / 10))
draw_set_color(0x00FFFFFF)
draw_rectangle(self.lx, self.ux, self.rx, self.dx, 1)
draw_rectangle((self.lx + 1), (self.ux + 1), (self.rx - 1), (self.dx - 1), 1)
draw_set_alpha(1)
self.w = self.sprite_width
self.h = self.sprite_height
self.spikecount = floor((self.w / 11))
for (self.i = 0; self.i < self.spikecount; self.i += 1)
{
    draw_sprite_ext(spr_bouncebox_spike, 0, ((self.x - (self.w / 2)) + 3), ((self.y - (self.h / 2)) + (self.i * 11)), 1, 1, 0, 0x00FFFFFF, (self.fadein / 10))
    draw_sprite_ext(spr_bouncebox_spike, 0, ((self.x + (self.w / 2)) - (self.i * 11)), ((self.y - (self.h / 2)) + 3), 1, 1, 270, 0x00FFFFFF, (self.fadein / 10))
    draw_sprite_ext(spr_bouncebox_spike, 0, ((self.x - (self.w / 2)) + (self.i * 11)), ((self.y + (self.h / 2)) - 2), 1, 1, 90, 0x00FFFFFF, (self.fadein / 10))
    draw_sprite_ext(spr_bouncebox_spike, 0, ((self.x + (self.w / 2)) - 2), ((self.y - (self.h / 2)) + (self.i * 11)), -1, 1, 0, 0x00FFFFFF, (self.fadein / 10))
}
