self.i = 0
while(true)
{
    if (self.i < 12)
    {
        scr_armorinfo(global.armor[self.i])
        self.armorname[self.i] = self.armornametemp
        self.armordesc[self.i] = self.armordesctemp
        self.amessage2[self.i] = self.amessage2temp
        self.amessage3[self.i] = self.amessage3temp
        self.armorat[self.i] = self.armorattemp
        self.armordf[self.i] = self.armordftemp
        self.armormag[self.i] = self.armormagtemp
        self.armorbolts[self.i] = self.armorboltstemp
        self.armorgrazeamt[self.i] = self.armorgrazeamttemp
        self.armorgrazesize[self.i] = self.armorgrazesizetemp
        self.armorchar1[self.i] = self.armorchar1temp
        self.armorchar2[self.i] = self.armorchar2temp
        self.armorchar3[self.i] = self.armorchar3temp
        self.armorvalue[self.i] = self.value
        self.armorability[self.i] = self.armorabilitytemp
        self.armorabilityicon[self.i] = self.armorabilityicontemp
        self.armoricon[self.i] = self.armoricontemp
        self.i = (self.i + 1)
        continue
    }
    break
}
