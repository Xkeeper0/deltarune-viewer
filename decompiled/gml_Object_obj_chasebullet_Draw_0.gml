if (self.dont == 0)
{
    if (self.active == 0)
    {
        self.futuredir = point_direction(self.x, self.y, (obj_heart.x + 8), (obj_heart.y + 8))
        draw_sprite_ext(spr_diamondbullet_form, 0, self.x, self.y, (3 - (self.image_alpha * 2)), (3 - (self.image_alpha * 2)), self.futuredir, 0x00FFFFFF, (1 - self.image_alpha))
        if (self.image_alpha < 1)
            self.image_alpha += 0.08
        else
        {
            move_towards_point((obj_heart.x + 8), (obj_heart.y + 8), 4)
            self.futuredir = self.direction
            self.active = 1
            self.friction = -0.1
        }
    }
    draw_sprite_ext(self.sprite_index, 0, self.x, self.y, (2 - self.image_alpha), (2 - self.image_alpha), self.futuredir, 0x00FFFFFF, self.image_alpha)
    if (self.x < (__view_get(0, 0) - 40))
        instance_destroy()
    if (self.x > (__view_get(0, 0) + 680))
        instance_destroy()
    if (self.y < (__view_get(1, 0) - 40))
        instance_destroy()
    if (self.y > (__view_get(1, 0) + 520))
        instance_destroy()
}
self.dont = 0
