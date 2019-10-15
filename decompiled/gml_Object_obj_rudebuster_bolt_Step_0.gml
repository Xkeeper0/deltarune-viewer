if (self.image_alpha < 1)
    self.image_alpha = (self.image_alpha + 0.25)
else
    self.image_alpha = 1
if (self.t == 0)
{
    self.targetx = global.monsterx[self.target.myself]
    self.targety = global.monstery[self.target.myself]
    self.cx = self.targetx
    self.cy = self.targety
    self.direction = (point_direction(self.x, self.y, self.cx, self.cy) - 20)
    self.speed = 24
    self.friction = -1.5
    self.image_angle = self.direction
    if (self.red == 1)
    {
        self.sprite_index = spr_rudebuster_beam_red
        self.image_xscale = 2.5
        self.image_yscale = 2.5
    }
}
if (self.t >= 1)
    _temp_local_var_1 = (self.explode == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.bolt_timer = (self.bolt_timer + 1)
    if button1_p()
    {
        if (self.bolt_timer >= 4)
            _temp_local_var_2 = (self.chosen_bolt == 0)
        else
            _temp_local_var_2 = 0
    }
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
        self.chosen_bolt = self.bolt_timer
    self.dir = point_direction(self.x, self.y, self.cx, self.cy)
    self.direction = (self.direction + (angle_difference(self.dir, self.direction) / 4))
    self.image_angle = self.direction
    if (point_distance(self.x, self.y, self.cx, self.cy) <= 40)
    {
        self.final_bolt = self.chosen_bolt
        self.visible = 0
        self.explode = 1
        self.t = 1
    }
}
if (self.explode == 1)
{
    if (self.t == 1)
    {
        self.bonus_anim = 0
        if (self.chosen_bolt > 0)
        {
            if (self.chosen_bolt == self.final_bolt)
                self.damage = (self.damage + 30)
            if (self.chosen_bolt == (self.final_bolt - 1))
                self.damage = (self.damage + 28)
            if (self.chosen_bolt == (self.final_bolt - 2))
                self.damage = (self.damage + 22)
            if (self.chosen_bolt == (self.final_bolt - 3))
                self.damage = (self.damage + 20)
            if (self.chosen_bolt == (self.final_bolt - 4))
                self.damage = (self.damage + 13)
            if (self.chosen_bolt == (self.final_bolt - 5))
                self.damage = (self.damage + 11)
            if (self.chosen_bolt == (self.final_bolt - 6))
                self.damage = (self.damage + 10)
            if (abs((self.chosen_bolt - self.final_bolt)) <= 2)
            {
                self.bonus_anim = 1
                snd_play(snd_scytheburst)
            }
        }
        if (self.red == 1)
            self.damage = (self.damage + 90)
        global.hittarget[self.star] = 0
        scr_damage_enemy(self.star, self.damage)
        if (global.monstertype[0] != 20)
        {
            with(self.target)
            {
                self.__of = scr_oflash()
            }
            if (self.red == 1)
            {
                with(self.target)
                {
                    self.__of.flashcolor = 255
                }
            }
        }
        snd_play(snd_rudebuster_hit)
        self.i = 0
        while(true)
        {
            if (self.i < 4)
            {
                self.burst[self.i] = scr_afterimage()
                self.burst[self.i].image_speed = 0.5
                self.burst[self.i].x = self.cx
                self.burst[self.i].y = self.cy
                self.burst[self.i].image_angle = (45 + (self.i * 90))
                self.burst[self.i].direction = self.burst[self.i].image_angle
                self.burst[self.i].speed = 25
                self.burst[self.i].depth = (self.depth - 10)
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.i = 4
        while(true)
        {
            if (self.i < 8)
            {
                self.burst[self.i] = scr_afterimage()
                self.burst[self.i].image_speed = 0.5
                self.burst[self.i].x = self.cx
                self.burst[self.i].y = self.cy
                self.burst[self.i].image_angle = (45 + (self.i * 90))
                self.burst[self.i].direction = self.burst[self.i].image_angle
                self.burst[self.i].speed = 25
                self.burst[self.i].depth = (self.depth - 10)
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
    if (self.t >= 2)
    {
        self.i = 0
        while(true)
        {
            if (self.i < 4)
            {
                with(self.burst[self.i])
                {
                    self.speed = (self.speed * 0.75)
                    self.image_xscale = (self.image_xscale * 0.8)
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.i = 4
        while(true)
        {
            if (self.i < 8)
            {
                with(self.burst[self.i])
                {
                    self.speed = (self.speed * 0.8)
                    self.image_xscale = (self.image_xscale * 0.8)
                }
                self.i = (self.i + 1)
                continue
            }
            break
        }
    }
    if (self.t >= 18)
        instance_destroy()
}
if (self.explode == 0)
{
    self.aft[self.maxaft] = scr_afterimage()
    self.aft[self.maxaft].image_yscale = 1.8
    self.aft[self.maxaft].image_angle = self.image_angle
    self.aft[self.maxaft].image_index = 4
    self.aft[self.maxaft].image_speed = 0.5
    self.aft[self.maxaft].image_alpha = (self.image_alpha - 0.2)
    self.maxaft = (self.maxaft + 1)
}
self.i = 0
while(true)
{
    if (self.i < self.maxaft)
    {
        with(self.aft[self.i])
        {
            self.image_yscale = (self.image_yscale - 0.1)
            if (self.image_yscale <= 0.1)
                instance_destroy()
        }
        if (self.explode == 1)
        {
            with(self.aft[self.i])
            {
                self.image_alpha = (self.image_alpha - 0.07)
                self.image_yscale = (self.image_yscale * 0.9)
                if (self.image_yscale <= 0.1)
                    instance_destroy()
            }
        }
        self.i = (self.i + 1)
        continue
    }
    break
}
self.a = (self.a + 1)
self.t = (self.t + 1)
