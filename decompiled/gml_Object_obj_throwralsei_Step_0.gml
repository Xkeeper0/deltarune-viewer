if (self.throwcon == 1)
{
    if (self.throwready == 0)
        self.angle = (self.angle + self.anglespeed)
    if (self.angle >= 30)
        self.anglespeed = -2
    if (self.angle <= -15)
        self.anglespeed = 2
    if button3_p()
    {
        if (self.throwalpha >= 0.9)
            _temp_local_var_1 = (self.throwready == 1)
        else
            _temp_local_var_1 = 0
    }
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
    {
        self.activatethrow = 1
        with(obj_writer)
        {
            instance_destroy()
        }
    }
    if button3_p()
        _temp_local_var_2 = (self.throwready == 0)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.throwready = 1
        with(obj_writer)
        {
            instance_destroy()
        }
        global.msg[0] = ((scr_84_get_lang_string("obj_throwralsei_slash_Step_0_gml_26_0"@8302) + scr_get_input_name(6)) + scr_84_get_lang_string("obj_throwralsei_slash_Step_0_gml_26_1"@8303))
        scr_battletext_default()
    }
    if (self.activatethrow == 1)
    {
        self.activatethrow = 0
        self.throwready = 0
        self.image_index = 0
        self.image_speed = 0.5
        self.sprite_index = spr_susieb_attack_unarmed
        self.angledraw = 0
        self.throwcon = 2
        snd_play(snd_ultraswing)
        self.ral = instance_create(self.rx, self.ry, obj_ralseithrown)
        self.ral.speed = self.mypower
        self.ral.mypower = self.mypower
        self.ral.image_xscale = 2
        self.ral.image_yscale = 2
        self.ral.direction = self.angle
        self.ral.image_angle = self.angle
        self.ral.gravity = self.ralgrav
    }
    if (self.throwready == 1)
    {
        self.mypower = (self.mypower + (self.powerdir * self.powerspeed))
        if (self.mypower >= self.maxpower)
            self.powerdir = -1
        if (self.mypower <= self.minpower)
            self.powerdir = 1
    }
}
if (self.throwcon == 2)
{
    if (self.image_index >= 5)
        self.image_speed = 0
}
if (self.angledraw == 1)
{
    self.lx = lengthdir_x(self.mypower, self.angle)
    self.ly = lengthdir_y(self.mypower, self.angle)
    self.i = 0
    while(true)
    {
        if (self.i < 42)
        {
            self.ralyadd = (self.ralgrav + (self.ralgrav * self.i))
            if (self.i > 0)
                self.ralyoff[self.i] = (self.ralyoff[(self.i - 1)] + self.ralyadd)
            else
                self.ralyoff[0] = self.ralyadd
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
