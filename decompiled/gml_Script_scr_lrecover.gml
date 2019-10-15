self.recovered = self.argument0
self.maxedout = 0
if (global.lhp < global.lmaxhp)
    global.lhp = (global.lhp + self.argument0)
else
    self.maxedout = 1
if (global.lhp >= global.lmaxhp)
    _temp_local_var_1 = (self.maxedout == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    global.lhp = global.lmaxhp
    self.maxedout = 1
}
