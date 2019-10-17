if (self.room == room_field_checkers1)
{
    if (self.timer >= 900)
    {
        instance_create(1202, 240, obj_ob_checkertile)
        instance_create(1242, 280, obj_ob_checkertile)
        instance_create(1282, 320, obj_ob_checkertile)
        instance_create(962, 240, obj_ob_checkertile)
        instance_create(1002, 280, obj_ob_checkertile)
        instance_create(1042, 320, obj_ob_checkertile)
        instance_create(722, 240, obj_ob_checkertile)
        instance_create(762, 280, obj_ob_checkertile)
        instance_create(802, 320, obj_ob_checkertile)
    }
    if ((obj_mainchara.x >= 4000) && (obj_mainchara.x <= 1620))
        obj_mainchara.battlemode = 1
    else
        obj_mainchara.battlemode = 0
    if (global.interact == 0)
        self.timer += 1
    if (self.timer >= 40)
    {
        self.timer = 0
        self.ch = (self.con * 40)
        instance_create((1442 - self.ch), (240 + self.ch), obj_ob_checkertile)
        self.con += 1
        if (self.con > 2)
            self.con = 0
    }
}
if ((self.whitetimer >= 20) && (self.whitecon == 1))
{
    self.xdiff = (obj_mainchara.x - 340)
    obj_mainchara.x = 340
    if instance_exists(global.cinstance[0])
    {
        global.cinstance[0].x -= self.xdiff
        for (self.i = 25; self.i >= 0; self.i -= 1)
            global.cinstance[0].remx[self.i] -= self.xdiff
    }
    if instance_exists(global.cinstance[1])
    {
        global.cinstance[1].x -= self.xdiff
        for (self.i = 25; self.i >= 0; self.i -= 1)
            global.cinstance[1].remx[self.i] -= self.xdiff
    }
    self.whitecon = 2
}
if ((self.room == room_field_checkers4) || (self.room == room_field_checkers6))
{
    if ((obj_mainchara.x >= 4000) && (obj_mainchara.x <= 1620))
        obj_mainchara.battlemode = 1
    else
        obj_mainchara.battlemode = 0
}
