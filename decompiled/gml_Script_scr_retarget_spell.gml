self.cancelattack = 0
if (self.star == 0)
{
    if (global.monster[0] == 0)
        self.star = 1
}
if (self.star == 1)
{
    if (global.monster[1] == 0)
        self.star = 2
}
if (self.star == 2)
{
    if (global.monster[2] == 0)
        self.star = 3
    if ((self.star == 3) && (global.monster[0] == 1))
        self.star = 0
    if ((self.star == 3) && (global.monster[1] == 1))
        self.star = 1
    if (self.star == 3)
        self.cancelattack = 1
}
