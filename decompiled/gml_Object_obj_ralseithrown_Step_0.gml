if (self.con == 0)
    _temp_local_var_1 = 1
else
    _temp_local_var_1 = (self.con == 2)
if _temp_local_var_1
    self.image_angle = self.direction
if (self.x > (self.xx + 700))
    _temp_local_var_2 = 1
else
    _temp_local_var_2 = (self.y < (self.yy - 40))
if _temp_local_var_2
{
    if (self.con == 0)
    {
        self.gravity = 0
        self.speed = 0
        self.x = (self.xx - 40)
        self.y = obj_heroralsei.y
        self.sprite_index = spr_ralseib_idle
        self.image_angle = 0
        self.hspeed = 20
        self.con = 10
    }
}
if (self.con == 10)
{
    self.timer = (self.timer + 1)
    if (self.x >= (obj_heroralsei.x - 10))
    {
        if (self.collided == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_ralseithrown_slash_Step_0_gml_23_0"@8285)
            scr_battletext_default()
        }
        with(obj_heroralsei)
        {
            self.visible = 1
        }
        with(obj_herosusie)
        {
            self.visible = 1
        }
        with(obj_checkers_enemy)
        {
            self.actcon = 1
            self.visible = 1
        }
        with(obj_throwtarget)
        {
            instance_destroy()
        }
        with(obj_throwralsei)
        {
            instance_destroy()
        }
        instance_destroy()
    }
}
if (self.con == 2)
{
    if (self.x < (self.xx - 40))
        _temp_local_var_3 = 1
    else
        _temp_local_var_3 = (self.y > (self.yy + 520))
    if _temp_local_var_3
    {
        self.timer = 0
        self.gravity = 0
        self.speed = 0
        self.x = (self.xx - 40)
        self.y = obj_heroralsei.y
        self.sprite_index = spr_ralseib_idle
        self.image_angle = 0
        self.hspeed = 20
        self.con = 10
    }
}
