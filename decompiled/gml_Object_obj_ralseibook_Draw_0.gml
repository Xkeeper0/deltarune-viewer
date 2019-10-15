if (self.page < 2)
    draw_sprite_ext(spr_rbook, 0, self.xx, self.yy, 1, 1, 0, 0xFFFFFF, 1)
if (self.turning == 1)
{
    self.siner = (self.siner + 1)
    self.turntimer = (self.turntimer + abs((sin(((6.28318530717959 * self.siner) / 24)) * 2.8)))
    self.grey1 = merge_color(0xFFFFFF, 0x808080, (self.turntimer / 10))
    self.grey2 = merge_color(0xFFFFFF, 0x808080, ((20 - self.turntimer) / 10))
    if (self.turntimer >= 20)
    {
        self.page = (self.page + 1)
        self.turntimer = 0
        self.turning = 0
    }
}
if (self.turning == -1)
{
    self.siner = (self.siner + 1)
    self.turntimer = (self.turntimer - abs((sin(((6.28318530717959 * self.siner) / 24)) * 2.8)))
    self.grey1 = merge_color(0xFFFFFF, 0x808080, ((variable)(- self.turntimer) / 10))
    self.grey2 = merge_color(0xFFFFFF, 0x808080, ((20 + self.turntimer) / 10))
    if (self.turntimer <= -20)
    {
        self.page = (self.page - 1)
        self.turntimer = 0
        self.turning = 0
    }
}
self.i = 7
while(true)
{
    if (self.i >= -1)
    {
        if (self.page < self.i)
            _temp_local_var_1 = (self.turning == 0)
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
        {
            if (self.page > -1)
                draw_sprite_part_ext(spr_rbook, self.i, 0, 0, (self.sprite_width / 2), self.sprite_height, self.xx, self.yy, 1, 1, 0xFFFFFF, 1)
            draw_sprite_part_ext(spr_rbook, self.i, (self.sprite_width / 2), 0, (self.sprite_width / 2), self.sprite_height, (self.xx + (self.sprite_width / 2)), self.yy, 1, 1, 0xFFFFFF, 1)
        }
        if (self.turnpage == self.i)
        {
            if (self.turning == -1)
            {
                draw_sprite_part_ext(spr_rbook, (self.i + 1), (self.sprite_width / 2), 0, (self.sprite_width / 2), self.sprite_height, (self.xx + (self.sprite_width / 2)), self.yy, 1, 1, 0xFFFFFF, 1)
                if (self.page > -1)
                    draw_sprite_part_ext(spr_rbook, self.i, 0, 0, (self.sprite_width / 2), self.sprite_height, self.xx, self.yy, 1, 1, 0xFFFFFF, 1)
                if (self.turntimer > -10)
                    draw_sprite_part_ext(spr_rbook, (self.i + 1), 0, 0, (self.sprite_width / 2), self.sprite_height, (self.xx - (((self.turntimer / 10) * self.sprite_width) / 2)), self.yy, (1 + (self.turntimer / 10)), 1, self.grey1, 1)
                if (self.turntimer < -10)
                    draw_sprite_part_ext(spr_rbook, self.i, (self.sprite_width / 2), 0, (self.sprite_width / 2), self.sprite_height, (self.xx + (self.sprite_width / 2)), self.yy, (-1 - (self.turntimer / 10)), 1, self.grey2, 1)
            }
            if (self.turning == 1)
            {
                draw_sprite_part_ext(spr_rbook, (self.i + 1), 0, 0, (self.sprite_width / 2), self.sprite_height, self.xx, self.yy, 1, 1, 0xFFFFFF, 1)
                if (self.page < 5)
                    draw_sprite_part_ext(spr_rbook, (self.i + 2), (self.sprite_width / 2), 0, (self.sprite_width / 2), self.sprite_height, (self.xx + (self.sprite_width / 2)), self.yy, 1, 1, 0xFFFFFF, 1)
                if (self.turntimer < 10)
                    draw_sprite_part_ext(spr_rbook, (self.i + 1), (self.sprite_width / 2), 0, (self.sprite_width / 2), self.sprite_height, (self.xx + (self.sprite_width / 2)), self.yy, (1 - (self.turntimer / 10)), 1, self.grey1, 1)
                if (self.turntimer > 10)
                    draw_sprite_part_ext(spr_rbook, (self.i + 2), 0, 0, (self.sprite_width / 2), self.sprite_height, ((self.xx + (self.sprite_width / 2)) - ((((self.turntimer - 10) / 10) * self.sprite_width) / 2)), self.yy, ((self.turntimer - 10) / 10), 1, self.grey2, 1)
            }
        }
        self.i = (self.i - 1)
        continue
    }
    break
}
