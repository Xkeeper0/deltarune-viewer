if (self.attacked == 0)
{
    global.invc = self.reminvc
    if (self.attack == 1)
    {
        self.box = instance_create((self.xx + 320), (self.yy + 170), obj_growtangle)
        self.mh = scr_moveheart()
        self.dd = instance_create(0, 0, obj_dbulletcontroller)
        self.dd.type = 21
        self.dd.damage = ((global.monsterat[self.myself] * 5) * self.tempattack)
        self.dd.target = self.mytarget
        self.dd.side = 1
        self.dd.btimer = -8
        global.turntimer = 190
    }
    if (self.attack == 2)
    {
        self.visible = 0
        self.chainking = instance_create(self.x, self.y, obj_chainking)
        self.chainking.type = 1
        self.chainking.subtype = 0
        self.chainking.grazepoints = 6
        self.box = instance_create((self.xx + 200), (self.yy + 175), obj_nonsolid_growtangle)
        self.box.sprite_index = spr_battlebg_wavechain
        self.hm = instance_create((self.box.x - 10), (self.box.y - 10), obj_heartmarker)
        scr_moveheart()
        with (self.hm)
            instance_destroy()
        self.chainking.damage = ((global.monsterat[self.myself] * 4) * self.tempattack)
        self.chainking.target = 3
        global.turntimer = 999
    }
    if (self.attack == 3)
    {
        self.box = instance_create((self.xx + 320), (self.yy + 170), obj_growtangle)
        scr_moveheart()
        self.dd = instance_create(0, 0, obj_dbulletcontroller)
        self.dd.type = 34
        self.dd.damage = ((global.monsterat[self.myself] * 5) * self.tempattack)
        self.dd.target = self.mytarget
        self.dd.btimer = 10
        global.turntimer = 210
    }
    if (self.attack == 4)
    {
        global.invc *= 1.5
        self.box = instance_create((self.xx + 310), (self.yy + 165), obj_growtangle)
        self.box.sprite_index = spr_battlebg_2
        self.box.keep = 1
        self.hm = instance_create((self.box.x - 10), (self.box.y - 10), obj_heartmarker)
        scr_moveheart()
        with (self.hm)
            instance_destroy()
        self.damagebox = instance_create(self.box.x, self.box.y, obj_growtangle_bouncer)
        self.damagebox.type = 5
        self.damagebox.damage = ((global.monsterat[self.myself] * 5) * self.tempattack)
        self.damagebox.target = self.mytarget
        global.turntimer = 999
    }
    if (self.attack == 5)
    {
        self.visible = 0
        self.chainking = instance_create(self.x, self.y, obj_chainking)
        self.chainking.grazepoints = 6
        self.chainking.type = 1
        self.chainking.subtype = 1
        self.box = instance_create((self.xx + 200), (self.yy + 175), obj_nonsolid_growtangle)
        self.box.sprite_index = spr_battlebg_wavechain
        self.chainking.damage = ((global.monsterat[self.myself] * 4) * self.tempattack)
        self.chainking.target = 3
        global.turntimer = 999
        self.hm = instance_create((self.box.x - 10), (self.box.y - 10), obj_heartmarker)
        scr_moveheart()
        with (self.hm)
            instance_destroy()
    }
    if (self.attack == 6)
    {
        global.invc *= 1.5
        self.visible = 0
        self.timeruse = 0
        self.chainking = instance_create(self.x, self.y, obj_chainking)
        self.chainking.type = 2
        self.chainking.subtype = 5
        if (self.chain_dragging >= 1)
            self.chainking.subtype = 2
        self.chain_dragging += 1
        self.box = instance_create((self.xx + 205), (self.yy + 170), obj_nonsolid_growtangle)
        self.box.sprite_index = spr_battlebg_1
        self.chainking.damage = ((global.monsterat[self.myself] * 5) * self.tempattack)
        self.chainking.target = self.mytarget
        global.turntimer = 999
        self.hm = instance_create((self.box.x - 10), (self.box.y - 10), obj_heartmarker)
        scr_moveheart()
        with (self.hm)
            instance_destroy()
    }
    if (self.attack == 7)
    {
        self.box = instance_create((self.xx + 320), (self.yy + 170), obj_growtangle)
        scr_moveheart()
        self.dd = instance_create(0, 0, obj_dbulletcontroller)
        self.dd.type = 35
        global.turntimer = 220
        self.dd.damage = ((global.monsterat[self.myself] * 5) * self.tempattack)
        self.dd.target = self.mytarget
        self.dd.btimer = 10
    }
    if (self.attack == 8)
    {
        global.invc *= 1.5
        self.box = instance_create((self.xx + 310), (self.yy + 165), obj_growtangle)
        self.box.sprite_index = spr_battlebg_2
        self.box.keep = 1
        self.hm = instance_create((self.box.x - 10), (self.box.y - 10), obj_heartmarker)
        scr_moveheart()
        with (self.hm)
            instance_destroy()
        self.damagebox = instance_create(self.box.x, self.box.y, obj_growtangle_bouncer)
        self.damagebox.type = 3
        self.damagebox.damage = ((global.monsterat[self.myself] * 5) * self.tempattack)
        self.damagebox.target = self.mytarget
        global.turntimer = 999
    }
    if (self.attack == 9)
    {
        self.box = instance_create((self.xx + 320), (self.yy + 170), obj_growtangle)
        scr_moveheart()
        self.dd = instance_create(0, 0, obj_dbulletcontroller)
        self.dd.type = 23
        global.turntimer = 200
        self.dd.damage = ((global.monsterat[self.myself] * 5) * self.tempattack)
        self.dd.target = self.mytarget
        self.dd.btimer = -8
        self.dd.side = 1
    }
    if (self.attack == 10)
    {
        self.visible = 0
        self.chainking = instance_create(self.x, self.y, obj_chainking)
        self.chainking.grazepoints = 6
        self.chainking.type = 1
        self.chainking.subtype = 2
        self.box = instance_create((self.xx + 200), (self.yy + 175), obj_nonsolid_growtangle)
        self.box.sprite_index = spr_battlebg_wavechain
        self.hm = instance_create((self.box.x - 10), (self.box.y - 10), obj_heartmarker)
        scr_moveheart()
        with (self.hm)
            instance_destroy()
        self.chainking.damage = ((global.monsterat[self.myself] * 4) * self.tempattack)
        self.chainking.target = 3
        global.turntimer = 999
    }
    if (self.attack == 11)
    {
        global.invc *= 1.5
        self.visible = 0
        self.timeruse = 0
        self.chainking = instance_create(self.x, self.y, obj_chainking)
        self.chainking.type = 2
        self.chainking.subtype = 1
        self.box = instance_create((self.xx + 205), (self.yy + 170), obj_nonsolid_growtangle)
        self.box.sprite_index = spr_battlebg_1
        self.chainking.damage = ((global.monsterat[self.myself] * 3) * self.tempattack)
        self.chainking.target = 3
        global.turntimer = 999
        self.hm = instance_create((self.box.x - 10), (self.box.y - 10), obj_heartmarker)
        scr_moveheart()
        with (self.hm)
            instance_destroy()
    }
    self.tempattack = 1
    self.attacked = 1
}
