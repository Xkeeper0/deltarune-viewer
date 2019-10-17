if instance_exists(obj_lightfairy)
    obj_lightfairy.factor = (self.battlealpha * 2)
if instance_exists(obj_mainchara)
{
    obj_mainchara.battlemode = 0
    for (self.i = 0; self.i < self.areas; self.i += 1)
    {
        if ((obj_mainchara.x > self.areax1[self.i]) && ((obj_mainchara.x < self.areax2[self.i]) && ((obj_mainchara.y > self.areay1[self.i]) && (obj_mainchara.y < self.areay2[self.i]))))
            obj_mainchara.battlemode = 1
    }
}
