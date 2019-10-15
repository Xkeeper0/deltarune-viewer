global.faceaction[self.myself] = 0
scr_retarget(self.myself)
if (self.cancelattack == 0)
{
    self.dm = instance_create(global.monsterx[global.chartarget[self.myself]], ((global.monstery[global.chartarget[self.myself]] - (global.hittarget[global.chartarget[self.myself]] * 20)) + 20), obj_dmgwriter)
    self.dm.type = (self.char - 1)
    self.dm.delay = 8
    self.damage = round((((global.battleat[self.myself] * self.points) / 20) - (global.monsterdf[global.chartarget[self.myself]] * 3)))
    if (global.monstertype[global.chartarget[self.myself]] == 19)
        self.damage = ceil((self.damage * 0.3))
    if (self.damage < 0)
        self.damage = 0
    if (self.damage == 0)
    {
        self.dm.delay = 2
        with(global.monsterinstance[global.chartarget[self.myself]])
        {
            if (self.hurttimer <= 15)
                _temp_local_var_1 = (self.candodge == 1)
            else
                _temp_local_var_1 = 0
            if _temp_local_var_1
            {
                self.dodgetimer = 0
                self.state = 4
            }
        }
    }
    self.dm.damage = self.damage
    global.hittarget[global.chartarget[self.myself]] = (global.hittarget[global.chartarget[self.myself]] + 1)
    global.monsterhp[global.chartarget[self.myself]] = (global.monsterhp[global.chartarget[self.myself]] - self.damage)
    if (self.is_auto_susie == 1)
        _temp_local_var_2 = (global.monsterhp[global.chartarget[self.myself]] <= 0)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
    {
        with(global.chartarget[self.myself])
        {
            global.flag[(51 + self.myself)] = 5
        }
    }
    if (self.damage > 0)
    {
        if (global.monstertype[0] != 20)
            scr_tensionheal(round((self.points / 10)))
        if (global.monstertype[0] == 20)
            scr_tensionheal(round((self.points / 15)))
        self.attack = instance_create((global.monsterx[global.chartarget[self.myself]] + random(6)), (global.monstery[global.chartarget[self.myself]] + random(6)), obj_basicattack)
        if (self.object_index == obj_herosusie)
        {
            self.attack.sprite_index = spr_attack_mash2
            self.attack.image_speed = 0.5
            self.attack.maxindex = 4
            snd_play(snd_impact)
            instance_create(0, 0, obj_shake)
        }
        if (self.object_index == obj_heroralsei)
        {
            self.attack.sprite_index = spr_attack_slap1
            self.attack.maxindex = 4
            self.attack.image_speed = 0.5
        }
        if (self.points == 150)
        {
            self.attack.image_xscale = 2.5
            self.attack.image_yscale = 2.5
        }
        with(global.monsterinstance[global.chartarget[self.myself]])
        {
            self.shakex = 9
            self.state = 3
            self.hurttimer = 30
        }
        if instance_exists(global.monsterinstance[global.chartarget[self.myself]])
            global.monsterinstance[global.chartarget[self.myself]].hurtamt = self.damage
    }
    if (global.monsterhp[global.chartarget[self.myself]] <= 0)
    {
        with(global.monsterinstance[global.chartarget[self.myself]])
        {
            scr_monsterdefeat()
        }
    }
}
