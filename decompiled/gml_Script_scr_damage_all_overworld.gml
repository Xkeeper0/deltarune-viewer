if (global.inv < 0)
{
    self.remdamage = self.damage
    self.remtarget = self.target
    if (!instance_exists(obj_shake))
        instance_create(0, 0, obj_shake)
    with (obj_dmgwriter)
        self.killactive = 1
    snd_stop(snd_hurt1)
    snd_play(snd_hurt1)
    for (self.ti = 0; self.ti < 3; self.ti += 1)
    {
        global.inv = -1
        self.damage = self.remdamage
        self.target = self.ti
        self.tdamage = self.damage
        with (global.charinstance[self.target])
        {
            self.hurt = 1
            self.hurttimer = 0
        }
        self.hpdiff = self.tdamage
        if (self.hpdiff >= global.hp[global.char[self.target]])
            self.hpdiff = (global.hp[global.char[self.target]] - 1)
        self.d_cancel = 0
        if (self.hpdiff <= 1)
        {
            self.d_cancel = 1
            self.hpdiff = 0
        }
        if (self.d_cancel == 0)
        {
            self.doomtype = -1
            global.hp[global.char[self.target]] -= self.hpdiff
            self.dmgwriter = instance_create(global.charinstance[self.target].x, ((global.charinstance[self.target].y + global.charinstance[self.target].myheight) - 24), obj_dmgwriter)
            self.dmgwriter.damage = self.hpdiff
            self.dmgwriter.type = self.doomtype
        }
        if (global.hp[global.char[self.target]] < 1)
            global.hp[global.char[self.target]] = 1
    }
    self.gameover = 1
    if ((global.char[0] != 0) && (global.hp[global.char[0]] > 1))
        self.gameover = 0
    if ((global.char[1] != 0) && (global.hp[global.char[1]] > 1))
        self.gameover = 0
    if ((global.char[2] != 0) && (global.hp[global.char[2]] > 1))
        self.gameover = 0
    if (self.gameover == 1)
        scr_gameover()
    self.target = self.remtarget
    global.inv = (global.invc * 40)
}
