self.targetx = (obj_mainchara.x + (obj_mainchara.sprite_width / 2))
self.bodyfacing = 1
if (self.targetx <= (self.x - 30))
    self.bodyfacing = 0
if (self.targetx >= (self.x + 30))
    self.bodyfacing = 2
if (self.attackcon < 2)
{
    if (self.bodyfacing == 0)
        self.xmake = -2
    if (self.bodyfacing == 2)
        self.xmake = 2
}
self.bounce = sin((self.siner / 5))
self.wing_index = (self.wing_index + (0.2 + abs((self.bounce / 8))))
if (self.attackcon == -1)
    draw_sprite_ext(spr_starwalker_attack, 0, self.x, (self.y + (self.bounce * 4)), self.xmake, 2, self.image_angle, 0xFFFFFF, self.image_alpha)
if (self.attackcon == 0)
{
    self.siner = (self.siner + 1)
    draw_sprite_ext(spr_starwalker_wings, self.wing_index, self.x, (self.y + (self.bounce * 4)), 2, 2, self.image_angle, 0xFFFFFF, self.image_alpha)
    draw_sprite_ext(spr_starwalker_body, self.bodyfacing, self.x, (self.y + (sin((self.siner / 5)) * 2)), 2, 2, self.image_angle, 0xFFFFFF, self.image_alpha)
}
if (self.attackcon == 1)
    draw_sprite_ext(spr_starwalker_attack, 0, self.x, (self.y + (self.bounce * 4)), self.xmake, 2, self.image_angle, 0xFFFFFF, self.image_alpha)
if (self.attackcon == 2)
{
    self.shkx = random(self.shakefactor)
    self.shky = random(self.shakefactor)
    if (self.shakefactor > 0)
        self.shakefactor = (self.shakefactor - 1)
    draw_sprite_ext(spr_starwalker_attack, 1, (self.x + self.shkx), ((self.y + self.shky) + (self.bounce * 4)), self.xmake, 2, self.image_angle, 0xFFFFFF, self.image_alpha)
}
