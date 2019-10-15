global.myfight = 7
global.mnfight = -1
with(obj_battlecontroller)
{
    self.victory = 1
}
self.i = 0
while(true)
{
    if (self.i < 3)
    {
        if (global.monster[self.i] == 1)
            _temp_local_var_1 = instance_exists(global.monsterinstance[self.i])
        else
            _temp_local_var_1 = 0
        if _temp_local_var_1
        {
            with(global.monsterinstance[self.i])
            {
                scr_monsterdefeat()
            }
        }
        self.i = (self.i + 1)
        continue
    }
    break
}
