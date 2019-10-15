self.FA = ((10 - self.FADEBUFFER) / 10)
if (self.FA > 1)
    self.FA = 1
self.k = 0
while(true)
{
    if (self.k < self.STEP)
    {
        self.img = IMAGE_GONERHEAD
        if (self.k == 1)
            self.img = IMAGE_GONERBODY
        if (self.k == 2)
            self.img = IMAGE_GONERLEGS
        if (self.LOCK[self.k] == 1)
        {
            self.s_size = abs((sin((self.siner / 16)) / 2))
            draw_sprite_ext(self.img, self.PART[self.k], (self.x - ((self.s_size * self.sprite_width) / 2)), ((self.y + self.sy[self.k]) - ((self.s_size * self.sprite_height) / 2)), (2 + self.s_size), (2 + self.s_size), 0, 0xFFFFFF, (0.4 * self.FA))
            self.s_size = abs((sin((self.siner / 21)) / 2))
            draw_sprite_ext(self.img, self.PART[self.k], (self.x - ((self.s_size * self.sprite_width) / 2)), ((self.y + self.sy[self.k]) - ((self.s_size * self.sprite_height) / 2)), (2 + self.s_size), (2 + self.s_size), 0, 0xFFFFFF, (0.4 * self.FA))
        }
        self.k = (self.k + 1)
        continue
    }
    break
}
if (self.CANCEL == 0)
    draw_sprite_ext(IMAGE_SOUL_BLUR, 0, (self.initx + 10), (self.inity - 30), 1, 1, 0, 0xFFFFFF, (1 * self.FA))
self.j = 0
while(true)
{
    if (self.j < self.STEP)
    {
        self.img = IMAGE_GONERHEAD
        if (self.j == 1)
            self.img = IMAGE_GONERBODY
        if (self.j == 2)
            self.img = IMAGE_GONERLEGS
        if (self.s == self.j)
        {
            self.i = 0
            while(true)
            {
                if (self.i <= self.PARTMAX[self.j])
                {
                    self.alpha = (1 - (abs((self.PARTX[self.j] + (self.i * 50))) / 120))
                    draw_sprite_ext(self.img, self.i, ((self.x + self.PARTX[self.j]) + (self.i * 50)), (self.y + self.sy[self.j]), 2, 2, 0, self.image_blend, (self.alpha * self.FA))
                    self.i = (self.i + 1)
                    continue
                }
                break
            }
        }
        else
            draw_sprite_ext(self.img, self.PART[self.j], self.x, (self.y + self.sy[self.j]), 2, 2, 0, self.image_blend, (1 * self.FA))
        self.j = (self.j + 1)
        continue
    }
    break
}
self.NAMEFADE_COMPLETE = 0
if instance_exists(DEVICE_CHOICE)
{
    if (DEVICE_CHOICE.TYPE == 3)
    {
        self.NAMEFADE_COMPLETE = 1
        self.NAMEFADE = (self.NAMEFADE + 0.03)
        self.NAMEFADE = (self.NAMEFADE * 1.25)
        if (self.NAMEFADE >= 1)
            self.NAMEFADE = 1
    }
}
if (self.NAMEFADE_COMPLETE == 0)
{
    self.NAMEFADE = (self.NAMEFADE - 0.03)
    self.NAMEFADE = (self.NAMEFADE * 0.75)
    if (self.NAMEFADE <= 0)
        self.NAMEFADE = 0
}
self.image_blend = merge_color(0xFFFFFF, 0x000000, self.NAMEFADE)
