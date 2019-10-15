if (global.hp[global.char[self.myself]] > 0)
{
    if (global.myfight == 3)
        _temp_local_var_1 = (global.faceaction[self.myself] == 6)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
        self.state = 6
    if (self.state == 0)
        _temp_local_var_2 = (self.hurt == 0)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        self.acttimer = 0
        self.thissprite = self.idlesprite
        if (global.faceaction[self.myself] == 1)
            self.thissprite = self.attackreadysprite
        if (global.faceaction[self.myself] == 3)
            self.thissprite = self.itemreadysprite
        if (global.faceaction[self.myself] == 2)
            self.thissprite = self.spellreadysprite
        if (global.faceaction[self.myself] == 6)
            self.thissprite = self.actreadysprite
        if (global.charcond[self.myself] == 5)
        {
            self.thissprite = self.defeatsprite
            global.faceaction[self.myself] = 9
        }
        if (global.faceaction[self.myself] == 4)
        {
            self.thissprite = self.defendsprite
            self.index = self.defendtimer
            if (self.defendtimer < self.defendframes)
                self.defendtimer = (self.defendtimer + 0.5)
        }
        else
        {
            self.defendtimer = 0
            self.index = (self.siner / 5)
        }
        self.siner = (self.siner + 1)
    }
    if (self.state == 1)
        _temp_local_var_3 = (self.hurt == 0)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
    {
        self.siner = (self.siner + 1)
        if (self.attacked == 0)
        {
            snd_stop(snd_laz_c)
            if (self.object_index == obj_herokris)
                snd_play(snd_laz_c)
            if (self.object_index == obj_heroralsei)
            {
                self.ls = snd_play(snd_laz_c)
                snd_pitch(self.ls, 1.15)
            }
            if (self.object_index == obj_herosusie)
            {
                self.ls = snd_play(snd_laz_c)
                snd_pitch(self.ls, 0.9)
            }
            if (self.points == 150)
            {
                snd_stop(snd_criticalswing)
                snd_play(snd_criticalswing)
                _temp_local_var_4 = 3
                if (3 <= 0)
                {
                }
                else
                {
                    while(true)
                    {
                        self.anim = instance_create(((self.x + self.mywidth) + random(50)), ((self.y + 30) + random(30)), obj_afterimage)
                        self.anim.sprite_index = spr_lightfairy
                        self.anim.image_speed = 0.25
                        self.anim.depth = -20
                        self.anim.image_xscale = 2
                        self.anim.image_yscale = 2
                        self.anim.hspeed = (2 + random(4))
                        self.anim.friction = -0.25
                        _temp_local_var_4 = (_temp_local_var_4 - 1)
                        if (_temp_local_var_4 - 1)
                            continue
                        break
                    }
                }
            }
            self.attacked = 1
            self.alarm[1] = 10
        }
        if (self.attacktimer < self.attackframes)
            self.image_index = self.attacktimer
        else
            self.image_index = self.attackframes
        self.thissprite = self.attacksprite
        self.index = self.image_index
        self.attacktimer = (self.attacktimer + self.attackspeed)
    }
    if (self.state == 2)
        _temp_local_var_5 = (self.hurt == 0)
    else
        _temp_local_var_5 = 0
    if _temp_local_var_5
    {
        self.siner = (self.siner + 1)
        if (self.itemed == 0)
        {
            self.itemed = 1
            self.alarm[4] = 15
        }
        if (self.attacktimer < self.spellframes)
            self.image_index = self.attacktimer
        else
            self.image_index = self.spellframes
        if (scr_monsterpop() == 0)
            self.attacktimer = 0
        self.thissprite = self.spellsprite
        self.index = self.image_index
        self.attacktimer = (self.attacktimer + 0.5)
    }
    if (self.state == 4)
        _temp_local_var_6 = (self.hurt == 0)
    else
        _temp_local_var_6 = 0
    if _temp_local_var_6
    {
        self.siner = (self.siner + 1)
        if (self.itemed == 0)
        {
            self.itemed = 1
            self.alarm[4] = 15
        }
        if (self.attacktimer < self.itemframes)
            self.image_index = self.attacktimer
        else
            self.image_index = self.itemframes
        if (scr_monsterpop() == 0)
            self.attacktimer = 0
        self.index = self.image_index
        self.thissprite = self.itemsprite
        self.attacktimer = (self.attacktimer + 0.5)
    }
    if (self.state == 6)
    {
        if (global.myfight == 3)
        {
            if (self.acttimer < self.actframes)
                self.acttimer = (self.acttimer + 0.5)
        }
        else
            self.acttimer = (self.acttimer + 0.5)
        self.thissprite = self.actsprite
        self.index = self.acttimer
        if (self.acttimer >= self.actreturnframes)
        {
            self.acttimer = 0
            self.state = 0
            global.faceaction[self.myself] = 0
        }
    }
    if (self.state == 7)
    {
        self.hurt = 0
        self.hurttimer = 0
        if (self.victoryanim < self.victoryframes)
        {
            self.thissprite = self.victorysprite
            self.index = self.victoryanim
            self.victoryanim = (self.victoryanim + 0.334)
        }
        else
        {
            self.thissprite = self.normalsprite
            self.index = 0
        }
    }
    if (self.hurt == 1)
    {
        self.hurtindex = (self.hurttimer / 2)
        if (self.hurtindex > 2)
            self.hurtindex = 2
        if (global.charcond[self.myself] == 5)
        {
            global.faceaction[self.myself] = 5
            global.charmove[self.myself] = 1
            global.charcond[self.myself] = 0
        }
        if (global.faceaction[self.myself] == 0)
            global.faceaction[self.myself] = 5
        if (global.faceaction[self.myself] != 4)
        {
            self.specdraw = 1
            draw_sprite_ext(self.hurtsprite, self.hurtindex, ((self.x - 20) + (self.hurtindex * 10)), self.y, 2, 2, 0, self.image_blend, self.image_alpha)
        }
        else
        {
            self.specdraw = 1
            self.thissprite = self.defendsprite
            self.index = self.defendtimer
            draw_sprite_ext(self.defendsprite, self.defendtimer, ((self.x - 20) + (self.hurtindex * 10)), self.y, 2, 2, 0, self.image_blend, self.image_alpha)
        }
        if (self.hurttimer > 15)
        {
            self.hurttimer = 0
            self.hurt = 0
            if (global.faceaction[self.myself] == 5)
                global.faceaction[self.myself] = 0
        }
        self.hurttimer = (self.hurttimer + 1)
    }
}
else
{
    global.charcond[self.myself] = 0
    self.hurttimer = 0
    self.hurt = 0
    self.thissprite = self.defeatsprite
    self.index = 0
    self.siner = (self.siner + 1)
}
if (self.specdraw == 0)
{
    self.sprite_index = self.thissprite
    self.image_index = self.index
    draw_sprite_ext(self.thissprite, self.index, self.x, self.y, 2, 2, 0, self.image_blend, self.image_alpha)
    if (self.flash == 1)
    {
        self.fsiner = (self.fsiner + 1)
        d3d_set_fog(1, 16777215, 0, 1)
        draw_sprite_ext(self.thissprite, self.index, self.x, self.y, 2, 2, 0, self.image_blend, (((variable)(- cos((self.fsiner / 5))) * 0.4) + 0.6))
        d3d_set_fog(0, 0, 0, 0)
    }
}
self.specdraw = 0
if (self.becomeflash == 0)
    self.flash = 0
if (global.targeted[self.myself] == 1)
{
    if (global.mnfight == 1)
        draw_sprite_ext(spr_chartarget, (self.siner / 10), self.x, self.y, 2, 2, 0, 0xFFFFFF, 1)
}
else
{
    if (self.combatdarken == 1)
        _temp_local_var_7 = instance_exists(obj_darkener)
    else
        _temp_local_var_7 = 0
    if _temp_local_var_7
    {
        if (self.darkify == 1)
        {
            if (self.darkentimer < 15)
                self.darkentimer = (self.darkentimer + 1)
            self.image_blend = merge_color(0xFFFFFF, 0x000000, (self.darkentimer / 30))
        }
    }
}
if (self.darkify == 0)
{
    if (self.darkentimer > 0)
        self.darkentimer = (self.darkentimer - 3)
    self.image_blend = merge_color(0xFFFFFF, 0x000000, (self.darkentimer / 30))
}
self.becomeflash = 0
