if (self.dont == 0)
{
    if (self.active == 0)
    {
        self.futuredir = point_direction(self.x, self.y, (obj_heart.x + 8), (obj_heart.y + 8))
        draw_sprite_ext(spr_diamondbullet_form, 0, self.x, self.y, (3 - (self.image_alpha * 2)), (3 - (self.image_alpha * 2)), self.futuredir, 0xFFFFFF, (1 - self.image_alpha))
        if (self.image_alpha < 1)
            self.image_alpha = (self.image_alpha + 0.1)
        else
        {
            move_towards_point((obj_heart.x + 8), (obj_heart.y + 8), 2)
            self.futuredir = self.direction
            self.active = 1
            self.speed = 0
        }
    }
    draw_sprite_ext(self.sprite_index, 0, self.x, self.y, (2 - self.image_alpha), (2 - self.image_alpha), self.futuredir, 0xFFFFFF, self.image_alpha)
    if (self.active == 1)
    {
        self.activetimer = (self.activetimer + 1)
        if (self.activetimer >= 5)
            _temp_local_var_1 = (self.times < self.difficulty)
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
        {
            self.mybul = instance_create(self.x, self.y, obj_regularbullet)
            if instance_exists(self.mybul)
            {
                self.mybul.damage = self.damage
                self.mybul.target = self.target
                self.mybul.sprite_index = spr_diamondbullet
                self.mybul.direction = self.futuredir
                with(self.mybul)
                {
                    self.speed = 6
                    self.image_angle = self.direction
                }
            }
            self.times = (self.times + 1)
            self.activetimer = 0
        }
        if (self.activetimer >= 5)
            _temp_local_var_2 = (self.times >= self.difficulty)
        else
            _temp_local_var_2 = 0
        if _temp_local_var_2
        {
            self.image_alpha = (self.image_alpha - 0.2)
            if (self.image_alpha <= 0)
                instance_destroy()
        }
    }
}
self.dont = 0
