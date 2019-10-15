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
    if (obj_mainchara.x >= 4000)
        _temp_local_var_1 = (obj_mainchara.x <= 1620)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
        obj_mainchara.battlemode = 1
    else
        obj_mainchara.battlemode = 0
    if (global.interact == 0)
        self.timer = (self.timer + 1)
    if (self.timer >= 40)
    {
        self.timer = 0
        self.ch = (self.con * 40)
        instance_create((1442 - self.ch), (240 + self.ch), obj_ob_checkertile)
        self.con = (self.con + 1)
        if (self.con > 2)
            self.con = 0
    }
}
if (self.whitetimer >= 20)
    _temp_local_var_2 = (self.whitecon == 1)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    self.xdiff = (obj_mainchara.x - 340)
    obj_mainchara.x = 340
    if instance_exists(global.cinstance[0])
    {
        global.cinstance[0].x = (global.cinstance[0].x - self.xdiff)
        self.i = 25
        while(true)
        {
            if (self.i >= 0)
            {
                global.cinstance[0].remx[self.i] = (global.cinstance[0].remx[self.i] - self.xdiff)
                self.i = (self.i - 1)
                continue
            }
            break
        }
    }
    if instance_exists(global.cinstance[1])
    {
        global.cinstance[1].x = (global.cinstance[1].x - self.xdiff)
        self.i = 25
        while(true)
        {
            if (self.i >= 0)
            {
                global.cinstance[1].remx[self.i] = (global.cinstance[1].remx[self.i] - self.xdiff)
                self.i = (self.i - 1)
                continue
            }
            break
        }
    }
    self.whitecon = 2
}
if (self.room == room_field_checkers4)
    _temp_local_var_3 = 1
else
    _temp_local_var_3 = (self.room == room_field_checkers6)
if _temp_local_var_3
{
    if (obj_mainchara.x >= 4000)
        _temp_local_var_4 = (obj_mainchara.x <= 1620)
    else
        _temp_local_var_4 = 0
    if _temp_local_var_4
        obj_mainchara.battlemode = 1
    else
        obj_mainchara.battlemode = 0
}
