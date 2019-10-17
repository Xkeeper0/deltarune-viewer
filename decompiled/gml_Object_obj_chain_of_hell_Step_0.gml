if (self.chaincon == 0)
    self.chaincon = 1
if (self.chaincon == 1)
{
    self.mypath1 = self.path_hellchain_hor1
    self.mypath2 = self.path_hellchain_hor2
    if (self.type == 1)
    {
        self.mypath1 = self.path_hellchain_a
        self.mypath2 = self.path_hellchain_b
        self.factor = 8
    }
    path_start(self.mypath1, self.maxspeed, path_action_stop, 0)
    self.chaincon = 2
    self.chaintimer = 0
}
if (self.chaincon == 2)
{
    self.image_angle = self.direction
    self.chaintimer += 1
    if (self.chaintimer >= self.chainrate)
    {
        self.chain[self.chain_number] = instance_create(self.x, self.y, obj_chainpiece)
        self.chain[self.chain_number].image_angle = self.image_angle
        self.chain_max += 1
        self.chain_number += 1
        self.chaintimer = 0
    }
    if (self.path_position >= 1)
    {
        self.path_speed = 0
        self.shakeamt = 12
        self.remx = obj_heart.x
        self.remy = obj_heart.y
        self.remx_box = obj_growtangle.x
        self.remy_box = obj_growtangle.y
        self.chaincon = 2.1
    }
    if (self.type == 88)
    {
        self.btimer += 1
        if ((self.btimer >= 2) && (self.path_position <= 0.8))
        {
            self.cchoice = choose(-1, 0, 1)
            self.ychoice = lengthdir_x(36, self.image_angle)
            self.xchoice = lengthdir_y(36, self.image_angle)
            self.bul = instance_create((self.x + (self.xchoice * self.cchoice)), (self.y + (self.ychoice * self.cchoice)), obj_collidebullet)
            self.bul.active = 1
            self.bul.sprite_index = spr_spadebullet
            self.bul.image_angle = self.image_angle
            self.btimer = 0
        }
    }
}
if (self.chaincon == 2.1)
{
    obj_heart.x = self.remx
    obj_heart.y = self.remy
    obj_growtangle.x = self.remx_box
    obj_growtangle.y = self.remy_box
    self.shakedir = random(360)
    self.xshake = lengthdir_x(self.shakeamt, self.shakedir)
    self.yshake = lengthdir_y(self.shakeamt, self.shakedir)
    obj_heart.x += self.xshake
    obj_heart.y += self.yshake
    obj_growtangle.x += self.xshake
    obj_growtangle.y += self.yshake
    self.shakeamt -= 2
    if (self.shakeamt < 0)
        self.chaincon = 3
}
if (self.chaincon == 3)
{
    self.chaincon = 5
    self.smashtime = 1
    self.bullettimer = 0
}
if (self.chaincon == 5)
{
    self.bullettimer += 1
    if (self.bullettimer >= 30)
        self.chaincon = 6
}
if (self.chaincon == 6)
{
    path_start(self.mypath2, (self.maxspeed / self.factor), path_action_stop, 0)
    if instance_exists(obj_growtangle)
    {
        obj_growtangle.maxspeed = self.maxspeed
        obj_growtangle.mypath2 = self.mypath2
        obj_growtangle.factor = self.factor
        with (obj_growtangle)
            path_start(self.mypath2, (self.maxspeed / self.factor), path_action_stop, 0)
    }
    self.chain_number -= 1
    self.chain_max -= 1
    self.framerule = 0
    if (self.chainrate == 1)
    {
        with (self.chain[self.chain_number])
            instance_destroy()
        self.chain_number -= 1
        self.chain_max -= 1
    }
    self.chaincon = 10
}
if (self.chaincon == 10)
{
    if (self.path_position >= 0.8)
        self.smashtime = 0
    if (self.framerule == 1)
        self.image_angle = (self.direction + 180)
    self.framerule = 1
    self.chaintimer -= 1
    if (self.chaintimer <= 0)
    {
        self.chaintimer = (self.chainrate * self.factor)
        if (self.chain_number >= 0)
        {
            with (self.chain[self.chain_number])
                instance_destroy()
            self.chain_number -= 1
            self.chain_max -= 1
        }
    }
    if (self.path_position >= 1)
        self.chaincon = 11
}
if (self.chaincon == 11)
{
}
if (self.smashtime == 1)
{
    if (self.type == 0)
    {
        self.btimer += 1
        if (self.btimer == 10)
        {
            for (self.i = 0; self.i < 1; self.i += 1)
            {
                self.regbul = instance_create(((__view_get(0, 0) + 320) + (self.i * 120)), (__view_get(1, 0) - 20), obj_regularbullet)
                self.regbul.vspeed = 2
                self.regbul.gravity = 0.2
                self.regbul.sprite_index = spr_spadebullet
                self.regbul.image_angle = 270
                scr_bullet_inherit(self.regbul)
            }
        }
        if (self.btimer >= 20)
        {
            self.btimer = 0
            for (self.i = 0; self.i < 2; self.i += 1)
            {
                self.regbul = instance_create(((__view_get(0, 0) + 260) + (self.i * 120)), (__view_get(1, 0) - 20), obj_regularbullet)
                self.regbul.vspeed = 2
                self.regbul.gravity = 0.2
                self.regbul.sprite_index = spr_spadebullet
                self.regbul.image_angle = 270
                scr_bullet_inherit(self.regbul)
            }
        }
    }
}
