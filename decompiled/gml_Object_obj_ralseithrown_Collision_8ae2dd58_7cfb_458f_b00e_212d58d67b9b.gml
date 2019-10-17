if (self.collided == 0)
{
    if (other.good == 1)
    {
        with (obj_checkers_enemy)
            self.crown += 35
        global.msg[0] = scr_84_get_lang_string("obj_ralseithrown_slash_Collision_154b9139_8c0d_44d5_b8de_0f03c1a8096c_gml_6_0")
        snd_play(snd_coin)
        with (other.id)
        {
            if (self.offing == 1)
            {
                self.con = 1
                self.vspeed = -8
            }
            else
                self.con = 5
        }
    }
    else
    {
        snd_play(snd_noise)
        with (other.id)
            self.con = 7
        with (obj_checkers_enemy)
            self.crown += 20
        global.msg[0] = scr_84_get_lang_string("obj_ralseithrown_slash_Collision_154b9139_8c0d_44d5_b8de_0f03c1a8096c_gml_29_0")
        self.hspeed = -12
        self.vspeed = -4
        self.gravity = 0.5
        self.con = 2
    }
    scr_battletext_default()
    self.collided = 1
}
