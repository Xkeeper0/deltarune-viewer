global.cinstance[self.argument3] = instance_create(self.argument0, self.argument1, obj_caterpillarchara)
global.cinstance[self.argument3].target = (12 + (self.argument3 * 12))
if (self.argument2 == 3)
{
    with (global.cinstance[self.argument3])
    {
        self.usprite = spr_ralseiu
        self.dsprite = spr_ralseid
        self.rsprite = spr_ralseir
        self.lsprite = spr_ralseil
    }
}
return global.cinstance[self.argument3];
