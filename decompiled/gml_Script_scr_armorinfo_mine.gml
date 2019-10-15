self.i = 0
while(true)
{
    if (self.i < 4)
    {
        scr_armorinfo(global.chararmor1[self.i])
        self.chararmor1name[self.i] = self.armornametemp
        self.chararmor1desc[self.i] = self.armordesctemp
        self.chararmor1at[self.i] = self.armorattemp
        self.chararmor1df[self.i] = self.armordftemp
        self.chararmor1mag[self.i] = self.armormagtemp
        self.chararmor1bolts[self.i] = self.armorboltstemp
        self.chararmor1grazeamt[self.i] = self.armorgrazeamttemp
        self.chararmor1grazesize[self.i] = self.armorgrazesizetemp
        self.chararmor1ability[self.i] = self.armorabilitytemp
        self.chararmor1abilityicon[self.i] = self.armorabilityicontemp
        self.chararmor1icon[self.i] = self.armoricontemp
        global.itemat[self.i][1] = self.armorattemp
        global.itemdf[self.i][1] = self.armordftemp
        global.itemmag[self.i][1] = self.armormagtemp
        global.itembolts[self.i][1] = self.armorboltstemp
        global.itemgrazeamt[self.i][1] = self.armorgrazeamttemp
        global.itemgrazesize[self.i][1] = self.armorgrazesizetemp
        scr_armorinfo(global.chararmor2[self.i])
        self.chararmor2name[self.i] = self.armornametemp
        self.chararmor2desc[self.i] = self.armordesctemp
        self.chararmor2at[self.i] = self.armorattemp
        self.chararmor2df[self.i] = self.armordftemp
        self.chararmor2mag[self.i] = self.armormagtemp
        self.chararmor2bolts[self.i] = self.armorboltstemp
        self.chararmor2grazeamt[self.i] = self.armorgrazeamttemp
        self.chararmor2grazesize[self.i] = self.armorgrazesizetemp
        self.chararmor2ability[self.i] = self.armorabilitytemp
        self.chararmor2abilityicon[self.i] = self.armorabilityicontemp
        self.chararmor2icon[self.i] = self.armoricontemp
        global.itemat[self.i][2] = self.armorattemp
        global.itemdf[self.i][2] = self.armordftemp
        global.itemmag[self.i][2] = self.armormagtemp
        global.itembolts[self.i][2] = self.armorboltstemp
        global.itemgrazeamt[self.i][2] = self.armorgrazeamttemp
        global.itemgrazesize[self.i][2] = self.armorgrazesizetemp
        self.i = (self.i + 1)
        continue
    }
    break
}
