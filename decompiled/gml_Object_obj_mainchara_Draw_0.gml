draw_self()
if (button1_p() && scr_debug())
{
    if (global.darkzone == 0)
    {
        draw_set_color(0x000000FF)
        if (global.facing == 1)
            draw_rectangle((self.x + (self.sprite_width / 2)), ((self.y + 6) + (self.sprite_height / 2)), ((self.x + self.sprite_width) + 13), (self.y + self.sprite_height), 1)
        if (global.facing == 3)
            draw_rectangle((self.x + (self.sprite_width / 2)), ((self.y + 6) + (self.sprite_height / 2)), (self.x - 13), (self.y + self.sprite_height), 1)
        if (global.facing == 0)
            draw_rectangle((self.x + 4), (self.y + 28), ((self.x + self.sprite_width) - 4), ((self.y + self.sprite_height) + 15), 1)
        if (global.facing == 2)
            draw_rectangle((self.x + 3), ((self.y + self.sprite_height) - 5), ((self.x + self.sprite_width) - 5), (self.y + 5), 1)
    }
    if (global.darkzone == 1)
    {
        draw_set_color(0x000000FF)
        if (global.facing == 1)
            draw_rectangle((self.x + (self.sprite_width / 2)), ((self.y + 12) + (self.sprite_height / 2)), ((self.x + self.sprite_width) + 26), (self.y + self.sprite_height), 1)
        if (global.facing == 3)
            draw_rectangle((self.x + (self.sprite_width / 2)), ((self.y + 12) + (self.sprite_height / 2)), (self.x - 26), (self.y + self.sprite_height), 1)
        if (global.facing == 0)
            draw_rectangle((self.x + 4), (self.y + 56), ((self.x + self.sprite_width) - 8), ((self.y + self.sprite_height) + 30), 1)
        if (global.facing == 2)
            draw_rectangle((self.x + 3), ((self.y + self.sprite_height) - 10), ((self.x + self.sprite_width) - 10), (self.y + 10), 1)
    }
}
if (self.battlemode == 1)
{
    self.becamebattle = 1
    if (self.battlealpha < 0.8)
        self.battlealpha += 0.04
    global.heartx = ((self.x + 12) - __view_get(0, 0))
    global.hearty = ((self.y + 40) - __view_get(1, 0))
}
else if (self.battlealpha > 0)
    self.battlealpha -= 0.08
self.battleheart.image_alpha = self.battlealpha
if (self.fun == 0)
{
    if (global.facing == 0)
        draw_sprite_ext(spr_krisd_heart, self.image_index, self.x, self.y, self.image_xscale, self.image_yscale, 0, self.image_blend, self.battlealpha)
    if (global.facing == 1)
        draw_sprite_ext(spr_krisr_heart, self.image_index, self.x, self.y, self.image_xscale, self.image_yscale, 0, self.image_blend, self.battlealpha)
    if (global.facing == 2)
        draw_sprite_ext(spr_krisu_heart, self.image_index, self.x, self.y, self.image_xscale, self.image_yscale, 0, self.image_blend, self.battlealpha)
    if (global.facing == 3)
        draw_sprite_ext(spr_krisl_heart, self.image_index, self.x, self.y, self.image_xscale, self.image_yscale, 0, self.image_blend, self.battlealpha)
}
else if (self.sprite_index == spr_krisd_slide)
    draw_sprite_ext(spr_krisd_slide_heart, self.image_index, self.x, self.y, self.image_xscale, self.image_yscale, 0, self.image_blend, self.battlealpha)
draw_sprite_ext(spr_heart_outline2, 0, (self.x + 12), (self.y + 40), 1, 1, 0, 0x00FFFFFF, (self.battlealpha * 2))
self.battleheart.x = (self.x + 12)
self.battleheart.y = (self.y + 40)
if (self.battlemode == 4)
{
    draw_set_color(0x0000FF00)
    draw_set_alpha(0.5)
    draw_rectangle((self.x + 12), (self.y + 40), (self.x + 27), (self.y + 49), 0)
    draw_line((self.x + 12), (self.y + 49), (self.x + 19), (self.y + 57))
    draw_line((self.x + 26), (self.y + 49), (self.x + 19), (self.y + 57))
    draw_set_alpha(1)
}
if scr_debug()
    draw_set_color(0x000000FF)
