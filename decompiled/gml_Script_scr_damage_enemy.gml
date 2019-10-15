self.dm = instance_create(global.monsterx[self.argument0], ((global.monstery[self.argument0] + 20) - (global.hittarget[self.argument0] * 20)), obj_dmgwriter)
self.dm.type = (global.char[self.caster] - 1)
self.dm.damage = self.argument1
global.monsterhp[self.argument0] = (global.monsterhp[self.argument0] - self.argument1)
if (self.argument1 > 0)
{
    with(global.monsterinstance[self.argument0])
    {
        self.shakex = 9
        self.state = 3
        self.hurttimer = 30
    }
    if instance_exists(global.monsterinstance[self.argument0])
        global.monsterinstance[self.argument0].hurtamt = self.argument1
}
global.hittarget[self.argument0] = (global.hittarget[self.argument0] + 1)
if (self.argument1 == 0)
{
    with(global.monsterinstance[self.argument0])
    {
        self.hurtamt = 0
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
if (global.monsterhp[self.argument0] <= 0)
{
    with(global.monsterinstance[self.argument0])
    {
        scr_monsterdefeat()
    }
}
