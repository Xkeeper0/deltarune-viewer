global.cinstance[self.argument3] = instance_create(self.argument0, self.argument1, obj_caterpillarchara)
global.cinstance[self.argument3].target = (12 + (self.argument3 * 12))
if (self.argument2 == 3)
{
    with(global.cinstance[self.argument3])
    {
        self.usprite = 206
        self.dsprite = 204
        self.rsprite = 209
        self.lsprite = 207
    }
}
return global.cinstance[self.argument3]
