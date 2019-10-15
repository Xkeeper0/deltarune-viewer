local.debug_inv = 0
if variable_global_exists("chemg_god_mode"@1648)
    local.debug_inv = global.chemg_god_mode
if (global.inv < 0)
    _temp_local_var_1 = (local.debug_inv == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    if (self.target < 3)
    {
        if (global.hp[global.char[self.target]] <= 0)
        {
            scr_randomtarget()
            self.target = self.mytarget
            with(global.charinstance[self.target])
            {
                self.image_blend = 0xFFFFFF
                self.darkify = 0
            }
        }
    }
    self.chartarget = 3
    self.tdamage = self.damage
    if (self.target < 3)
    {
        self.tdamage = ceil((self.tdamage - (global.battledf[self.target] * 3)))
        self.chartarget = global.char[self.target]
        if (global.charaction[self.target] == 10)
            self.tdamage = ceil(((2 * self.tdamage) / 3))
        if (self.tdamage < 1)
            self.tdamage = 1
    }
    if (~ instance_exists(obj_shake))
        instance_create(0, 0, obj_shake)
    with(global.charinstance[self.target])
    {
        self.hurt = 1
        self.hurttimer = 0
    }
    self.hpdiff = self.tdamage
    with(obj_dmgwriter)
    {
        if (self.delaytimer >= 1)
            self.killactive = 1
    }
    self.doomtype = -1
    with(obj_heart)
    {
        self.dmgnoise = 1
    }
    if (self.target < 3)
    {
        if (global.hp[self.chartarget] <= 0)
        {
            self.doomtype = 4
            global.hp[self.chartarget] = (global.hp[self.chartarget] - round((self.tdamage / 4)))
            self.hpdiff = round((self.tdamage / 4))
        }
        else
        {
            global.hp[self.chartarget] = (global.hp[self.chartarget] - self.tdamage)
            if (global.hp[self.chartarget] <= 0)
            {
                self.hpdiff = abs((global.hp[self.chartarget] - (global.maxhp[self.chartarget] / 2)))
                self.doomtype = 4
                global.hp[self.chartarget] = round(((variable)(- global.maxhp[self.chartarget]) / 2))
                scr_dead(self.target)
            }
        }
        self.dmgwriter = instance_create(global.charinstance[self.target].x, ((global.charinstance[self.target].y + global.charinstance[self.target].myheight) - 24), obj_dmgwriter)
        self.dmgwriter.damage = self.hpdiff
        self.dmgwriter.type = self.doomtype
    }
    if (self.target == 3)
    {
        self.hpi = 0
        while(true)
        {
            if (self.hpi < 3)
            {
                self.chartarget = global.char[self.hpi]
                if (global.hp[self.chartarget] >= 0)
                {
                    if (global.charaction[self.hpi] == 10)
                        global.hp[self.chartarget] = (global.hp[self.chartarget] - ceil((self.tdamage / 2)))
                    else
                        global.hp[self.chartarget] = (global.hp[self.chartarget] - self.tdamage)
                    if (global.hp[self.chartarget] <= 0)
                        global.hp[self.chartarget] = round(((variable)(- global.maxhp[0]) / 2))
                }
                self.hpi = (self.hpi + 1)
                continue
            }
            break
        }
    }
    global.inv = (global.invc * 40)
    self.gameover = 1
    if (global.char[0] != 0)
        _temp_local_var_2 = (global.hp[global.char[0]] > 0)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
        self.gameover = 0
    if (global.char[1] != 0)
        _temp_local_var_3 = (global.hp[global.char[1]] > 0)
    else
        _temp_local_var_3 = 0
    if _temp_local_var_3
        self.gameover = 0
    if (global.char[2] != 0)
        _temp_local_var_4 = (global.hp[global.char[2]] > 0)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
        self.gameover = 0
    if (self.gameover == 1)
        scr_gameover()
}
