scr_heal(self.star, self.argument0)
with(global.charinstance[self.star])
{
    self.ha = instance_create(self.x, self.y, obj_healanim)
    self.ha.target = self.id
    self.dmgwr = scr_dmgwriter_selfchar()
    with(self.dmgwr)
    {
        self.delay = 8
        self.type = 3
        self.damage = self.argument0
    }
    if (global.hp[global.char[self.myself]] >= global.maxhp[global.char[self.myself]])
    {
        with(self.dmgwr)
        {
            self.specialmessage = 3
        }
    }
    self.tu = (self.tu + 1)
}
global.spelldelay = 15
