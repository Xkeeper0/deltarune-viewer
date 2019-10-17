self.FA = ((10 - self.FADEBUFFER) / 10)
if (self.FA > 1)
    self.FA = 1
for (self.k = 0; self.k < self.STEP; self.k += 1)
{
    self.img = IMAGE_GONERHEAD
    if (self.k == 1)
        self.img = IMAGE_GONERBODY
    if (self.k == 2)
        self.img = IMAGE_GONERLEGS
    if (self.LOCK[self.k] == 1)
    {
        self.s_size = abs((sin((self.siner / 16)) / 2))
        draw_sprite_ext(self.img, self.PART[self.k], (self.x - ((self.s_size * self.sprite_width) / 2)), ((self.y + self.sy[self.k]) - ((self.s_size * self.sprite_height) / 2)), (2 + self.s_size), (2 + self.s_size), 0, 0x00FFFFFF, (0.4 * self.FA))
        self.s_size = abs((sin((self.siner / 21)) / 2))
        draw_sprite_ext(self.img, self.PART[self.k], (self.x - ((self.s_size * self.sprite_width) / 2)), ((self.y + self.sy[self.k]) - ((self.s_size * self.sprite_height) / 2)), (2 + self.s_size), (2 + self.s_size), 0, 0x00FFFFFF, (0.4 * self.FA))
    }
}
if (self.CANCEL == 0)
    draw_sprite_ext(IMAGE_SOUL_BLUR, 0, (self.initx + 10), (self.inity - 30), 1, 1, 0, 0x00FFFFFF, (1 * self.FA))
for (self.j = 0; self.j < self.STEP; self.j += 1)
{
    self.img = IMAGE_GONERHEAD
    if (self.j == 1)
        self.img = IMAGE_GONERBODY
    if (self.j == 2)
        self.img = IMAGE_GONERLEGS
    if (self.s == self.j)
    {
        for (self.i = 0; self.i <= self.PARTMAX[self.j]; self.i += 1)
        {
            self.alpha = (1 - (abs((self.PARTX[self.j] + (self.i * 50))) / 120))
            draw_sprite_ext(self.img, self.i, ((self.x + self.PARTX[self.j]) + (self.i * 50)), (self.y + self.sy[self.j]), 2, 2, 0, self.image_blend, (self.alpha * self.FA))
        }
    }
    else
        draw_sprite_ext(self.img, self.PART[self.j], self.x, (self.y + self.sy[self.j]), 2, 2, 0, self.image_blend, (1 * self.FA))
}
self.NAMEFADE_COMPLETE = 0
if instance_exists(DEVICE_CHOICE)
{
    if (DEVICE_CHOICE.TYPE == 3)
    {
        self.NAMEFADE_COMPLETE = 1
        self.NAMEFADE += 0.03
        self.NAMEFADE *= 1.25
        if (self.NAMEFADE >= 1)
            self.NAMEFADE = 1
    }
}
if (self.NAMEFADE_COMPLETE == 0)
{
    self.NAMEFADE -= 0.03
    self.NAMEFADE *= 0.75
    if (self.NAMEFADE <= 0)
        self.NAMEFADE = 0
}
self.image_blend = merge_color(0x00FFFFFF, 0x00000000, self.NAMEFADE)
