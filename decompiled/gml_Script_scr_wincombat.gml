global.myfight = 7
global.mnfight = -1
with (obj_battlecontroller)
    self.victory = 1
for (self.i = 0; self.i < 3; self.i += 1)
{
    if ((global.monster[self.i] == 1) && instance_exists(global.monsterinstance[self.i]))
    {
        with (global.monsterinstance[self.i])
            scr_monsterdefeat()
    }
}
