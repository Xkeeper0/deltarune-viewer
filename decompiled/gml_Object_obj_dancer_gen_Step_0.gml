if instance_exists(obj_lightfairy)
    obj_lightfairy.factor = (self.battlealpha * 2)
if instance_exists(obj_mainchara)
{
    obj_mainchara.battlemode = 0
    self.i = 0
    while(true)
    {
        if (self.i < self.areas)
        {
            if (obj_mainchara.x > self.areax1[self.i])
            {
                if (obj_mainchara.x < self.areax2[self.i])
                {
                    if (obj_mainchara.y > self.areay1[self.i])
                        _temp_local_var_1 = (obj_mainchara.y < self.areay2[self.i])
                    else
                        _temp_local_var_1 = 0
                }
                else
                    _temp_local_var_1 = 0
            }
            else
                _temp_local_var_1 = 0
            if _temp_local_var_1
                obj_mainchara.battlemode = 1
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
