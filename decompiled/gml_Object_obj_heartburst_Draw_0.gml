self.burst += 1
draw_sprite_ext(spr_heartoutline2, 0, (self.xstart + 9), (self.ystart + 9), (0.25 + self.burst), (0.25 + (self.burst / 2)), 0, 0x00FFFFFF, (0.8 - (self.burst / 6)))
draw_sprite_ext(spr_heartoutline, 0, (self.xstart + 9), (self.ystart + 9), (0.25 + (self.burst / 1.5)), (0.25 + (self.burst / 3)), 0, 0x00FFFFFF, (1 - (self.burst / 6)))
draw_sprite_ext(spr_heartoutline, 0, (self.xstart + 9), (self.ystart + 9), (0.2 + (self.burst / 2.5)), (0.2 + (self.burst / 5)), 0, 0x00FFFFFF, (1.2 - (self.burst / 6)))
if (self.burst > 10)
    instance_destroy()
