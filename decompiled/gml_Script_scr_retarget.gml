self.thistarget = global.chartarget[self.argument0]
self.cancelattack = 0
if (self.thistarget == 0)
{
    if (global.monster[0] == 0)
        self.thistarget = 1
}
if (self.thistarget == 1)
{
    if (global.monster[1] == 0)
        self.thistarget = 2
}
if (self.thistarget == 2)
{
    if (global.monster[2] == 0)
        self.thistarget = 3
    if ((self.thistarget == 3) && (global.monster[0] == 1))
        self.thistarget = 0
    if ((self.thistarget == 3) && (global.monster[1] == 1))
        self.thistarget = 1
    if (self.thistarget == 3)
        self.cancelattack = 1
}
global.chartarget[self.argument0] = self.thistarget
