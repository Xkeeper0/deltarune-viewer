if (self.part[2] >= 0)
    self.wsiner += 0.8
if (self.animate == 0)
{
    self.siner = 0
    self.wsiner = 0
}
self.walkc = cos((self.wsiner / 3))
for (self.loop = 0; self.loop < 2; self.loop += 1)
{
    if (self.loop == 0)
    {
        draw_set_blend_mode(0)
        self.color[0] = self.basecolor
        self.color[1] = self.basecolor
        self.color[2] = self.basecolor
    }
    if (self.loop == 1)
    {
        draw_set_blend_mode(1)
        self.color[0] = self.dcolor[0]
        self.color[1] = self.dcolor[1]
        self.color[2] = self.dcolor[2]
    }
    self.walka = (-sin((self.wsiner / 6)))
    self.walkb = (-cos((self.wsiner / 6)))
    if (self.bad == 0)
    {
        if (self.part[2] == 0)
            draw_sprite_ext(spr_thrashfoot, 0, ((self.xx - (11 * self.s)) + ((self.s * self.walka) * 2)), ((self.yy + (19 * self.s)) + ((self.s * self.walkb) * 1)), self.s, self.s, 0, self.color[2], self.a)
        if (self.part[2] == 1)
            draw_sprite_ext(spr_thrashfoot, 1, ((self.xx - (6 * self.s)) + ((self.s * self.walka) * 2)), ((self.yy + (17 * self.s)) + ((self.s * self.walkb) * 1)), self.s, self.s, 0, self.color[2], self.a)
        if (self.part[2] == 3)
            draw_sprite_ext(spr_thrashfoot, 4, ((self.xx - (8 * self.s)) + ((self.s * self.walka) * 2)), ((self.yy + (21 * self.s)) + ((self.s * self.walkb) * 1)), self.s, self.s, 0, self.color[2], self.a)
    }
    else
    {
        if (self.part[2] == 0)
            draw_sprite_ext(scr_84_get_sprite("spr_thrashfoot_b"), 0, ((self.xx - (11 * self.s)) + ((self.s * self.walka) * 2)), ((self.yy + (19 * self.s)) + ((self.s * self.walkb) * 1)), (self.s / 2), (self.s / 2), 0, self.color[2], self.a)
        if (self.part[2] == 1)
            draw_sprite_ext(scr_84_get_sprite("spr_thrashfoot_b"), 1, ((self.xx - (6 * self.s)) + ((self.s * self.walka) * 2)), ((self.yy + (17 * self.s)) + ((self.s * self.walkb) * 1)), (self.s / 2), (self.s / 2), 0, self.color[2], self.a)
        if (self.part[2] == 3)
            draw_sprite_ext(scr_84_get_sprite("spr_thrashfoot_b"), 4, ((self.xx - (8 * self.s)) + ((self.s * self.walka) * 2)), ((self.yy + (21 * self.s)) + ((self.s * self.walkb) * 1)), (self.s / 2), (self.s / 2), 0, self.color[2], self.a)
    }
}
if (self.part[0] >= 0)
{
    for (self.loop = 0; self.loop < 2; self.loop += 1)
    {
        if (self.loop == 0)
        {
            draw_set_blend_mode(0)
            self.color[0] = self.basecolor
            self.color[1] = self.basecolor
            self.color[2] = self.basecolor
        }
        if (self.loop == 1)
        {
            draw_set_blend_mode(1)
            self.color[0] = self.dcolor[0]
            self.color[1] = self.dcolor[1]
            self.color[2] = self.dcolor[2]
        }
        if (self.bad == 0)
            draw_sprite_ext(spr_thrashbody, self.part[0], self.xx, (self.yy + (self.s * self.walkc)), self.s, self.s, 0, self.color[0], self.a)
        if (self.bad == 1)
            draw_sprite_ext(scr_84_get_sprite("spr_thrashbody_b"), self.part[0], self.xx, (self.yy + (self.s * self.walkc)), (self.s / 2), (self.s / 2), 0, self.color[0], self.a)
    }
}
for (self.loop = 0; self.loop < 2; self.loop += 1)
{
    if (self.loop == 0)
    {
        draw_set_blend_mode(0)
        self.color[0] = self.basecolor
        self.color[1] = self.basecolor
        self.color[2] = self.basecolor
    }
    if (self.loop == 1)
    {
        draw_set_blend_mode(1)
        self.color[0] = self.dcolor[0]
        self.color[1] = self.dcolor[1]
        self.color[2] = self.dcolor[2]
    }
    if (self.bad == 0)
    {
        if (self.part[1] == 0)
            draw_sprite_ext(spr_thrashweapon_laser, 0, (self.xx - (8 * self.s)), ((self.yy + (6 * self.s)) + ((self.s * self.walkc) * 2)), self.s, self.s, 0, self.color[1], self.a)
        if (self.part[1] == 1)
            draw_sprite_ext(spr_thrashweapon_sword, 0, (self.xx - (10 * self.s)), ((self.yy + (6 * self.s)) + ((self.s * self.walkc) * 2)), self.s, self.s, 0, self.color[1], self.a)
        if (self.part[1] == 2)
            draw_sprite_ext(spr_thrashweapon_flame, 0, (self.xx - (self.s * 4)), ((self.yy + (5 * self.s)) + ((self.s * self.walkc) * 2)), self.s, self.s, 0, self.color[1], self.a)
        if (self.part[1] == 3)
            draw_sprite_ext(spr_thrashweapon_duck, 0, (self.xx - (8 * self.s)), ((self.yy + (3 * self.s)) + ((self.s * self.walkc) * 2)), self.s, self.s, 0, self.color[1], self.a)
    }
    else
    {
        if (self.part[1] == 0)
            draw_sprite_ext(spr_thrashweapon_laser_b, 0, (self.xx - (8 * self.s)), ((self.yy + (6 * self.s)) + ((self.s * self.walkc) * 2)), (self.s / 2), (self.s / 2), 0, self.color[1], self.a)
        if (self.part[1] == 1)
            draw_sprite_ext(spr_thrashweapon_sword_b, 0, (self.xx - (10 * self.s)), ((self.yy + (6 * self.s)) + ((self.s * self.walkc) * 2)), (self.s / 2), (self.s / 2), 0, self.color[1], self.a)
        if (self.part[1] == 2)
            draw_sprite_ext(spr_thrashweapon_flame_b, 0, (self.xx - (self.s * 4)), ((self.yy + (5 * self.s)) + ((self.s * self.walkc) * 2)), (self.s / 2), (self.s / 2), 0, self.color[1], self.a)
        if (self.part[1] == 3)
            draw_sprite_ext(spr_thrashweapon_duck, 0, (self.xx - (8 * self.s)), ((self.yy + (3 * self.s)) + ((self.s * self.walkc) * 2)), self.s, self.s, 0, self.color[1], self.a)
    }
}
for (self.loop = 0; self.loop < 2; self.loop += 1)
{
    if (self.loop == 0)
    {
        draw_set_blend_mode(0)
        self.color[0] = self.basecolor
        self.color[1] = self.basecolor
        self.color[2] = self.basecolor
    }
    if (self.loop == 1)
    {
        draw_set_blend_mode(1)
        self.color[0] = self.dcolor[0]
        self.color[1] = self.dcolor[1]
        self.color[2] = self.dcolor[2]
    }
    self.walka = sin((self.wsiner / 6))
    self.walkb = cos((self.wsiner / 6))
    if (self.bad == 0)
    {
        if (self.part[2] == 0)
            draw_sprite_ext(spr_thrashfoot, 0, ((self.xx - (5 * self.s)) + ((self.s * self.walka) * 2)), ((self.yy + (20 * self.s)) + ((self.s * self.walkb) * 1)), self.s, self.s, 0, self.color[2], self.a)
        if (self.part[2] == 1)
            draw_sprite_ext(spr_thrashfoot, 1, (self.xx + ((self.s * self.walka) * 2)), ((self.yy + (18 * self.s)) + ((self.s * self.walkb) * 1)), self.s, self.s, 0, self.color[2], self.a)
        if (self.part[2] == 2)
            draw_sprite_ext(spr_thrashfoot, 2, (self.xx - (15 * self.s)), (self.yy + (18 * self.s)), self.s, self.s, 0, self.color[2], self.a)
        if (self.part[2] == 3)
        {
            self.walka = sin((self.wsiner / 6))
            self.walkb = cos((self.wsiner / 6))
            draw_sprite_ext(spr_thrashfoot, 3, (self.xx + ((self.s * self.walka) * 2)), ((self.yy + (22 * self.s)) + ((self.s * self.walkb) * 1)), self.s, self.s, 0, self.color[2], self.a)
        }
    }
    else
    {
        if (self.part[2] == 0)
            draw_sprite_ext(scr_84_get_sprite("spr_thrashfoot_b"), 0, ((self.xx - (5 * self.s)) + ((self.s * self.walka) * 2)), ((self.yy + (20 * self.s)) + ((self.s * self.walkb) * 1)), (self.s / 2), (self.s / 2), 0, self.color[2], self.a)
        if (self.part[2] == 1)
            draw_sprite_ext(scr_84_get_sprite("spr_thrashfoot_b"), 1, (self.xx + ((self.s * self.walka) * 2)), ((self.yy + (18 * self.s)) + ((self.s * self.walkb) * 1)), (self.s / 2), (self.s / 2), 0, self.color[2], self.a)
        if (self.part[2] == 2)
            draw_sprite_ext(scr_84_get_sprite("spr_thrashfoot_b"), 2, (self.xx - (15 * self.s)), (self.yy + (18 * self.s)), (self.s / 2), (self.s / 2), 0, self.color[2], self.a)
        if (self.part[2] == 3)
        {
            self.walka = sin((self.wsiner / 6))
            self.walkb = cos((self.wsiner / 6))
            draw_sprite_ext(spr_thrashfoot, 3, (self.xx + ((self.s * self.walka) * 2)), ((self.yy + (22 * self.s)) + ((self.s * self.walkb) * 1)), self.s, self.s, 0, self.color[2], self.a)
        }
    }
}
draw_set_blend_mode(0)
if (self.dbselect == 1)
{
    if keyboard_check_pressed(vk_right)
    {
        self.part[0] += 1
        if (self.part[0] >= 4)
            self.part[0] = 0
    }
    if keyboard_check_pressed(vk_up)
    {
        self.part[1] += 1
        if (self.part[1] >= 4)
            self.part[1] = 0
    }
    if keyboard_check_pressed(vk_shift)
    {
        self.part[2] += 1
        if (self.part[2] >= 4)
            self.part[2] = 0
    }
    if keyboard_check(vk_space)
    {
        self.dcolor[0] = make_color_hsv((self.wsiner * 2), 255, 255)
        self.dcolor[1] = make_color_hsv(self.wsiner, 255, 255)
        self.dcolor[2] = make_color_hsv((self.wsiner / 2), 255, 255)
    }
    if keyboard_check_pressed(vk_return)
    {
        self.s += 1
        if (self.s >= 5)
            self.s = 1
    }
}
