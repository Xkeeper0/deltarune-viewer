draw_self()
if (self.chaincon >= 9999)
    _temp_local_var_1 = (self.type >= 1)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    if instance_exists(self.spike)
    {
        self.w = self.spike.sprite_width
        self.h = self.spike.sprite_height
        self.spikecount = floor((self.w / 11))
        self.spx = self.spike.x
        self.spy = self.spike.y
        self.balpha = self.spike.basealpha
        self.i = 0
        while(true)
        {
            if (self.i < self.spikecount)
            {
                draw_sprite_ext(spr_bouncebox_spike, 0, ((self.spx - (self.w / 2)) + 3), ((self.y - (self.h / 2)) + (self.i * 11)), 1, 1, 0, 0xFFFFFF, self.balpha)
                draw_sprite_ext(spr_bouncebox_spike, 0, ((self.x + (self.w / 2)) - (self.i * 11)), ((self.y - (self.h / 2)) + 3), 1, 1, 270, 0xFFFFFF, self.balpha)
                draw_sprite_ext(spr_bouncebox_spike, 0, ((self.x - (self.w / 2)) + (self.i * 11)), ((self.y + (self.h / 2)) - 2), 1, 1, 90, 0xFFFFFF, self.balpha)
                draw_sprite_ext(spr_bouncebox_spike, 0, ((self.x + (self.w / 2)) - 2), ((self.y - (self.h / 2)) + (self.i * 11)), -1, 1, 0, 0xFFFFFF, self.balpha)
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
}
