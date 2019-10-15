self.i = 0
while(true)
{
    if (self.i < 12)
    {
        scr_weaponinfo(global.weapon[self.i])
        self.weaponname[self.i] = self.weaponnametemp
        self.weapondesc[self.i] = self.weapondesctemp
        self.wmessage2[self.i] = self.wmessage2temp
        self.wmessage3[self.i] = self.wmessage3temp
        self.weaponat[self.i] = self.weaponattemp
        self.weapondf[self.i] = self.weapondftemp
        self.weaponmag[self.i] = self.weaponmagtemp
        self.weaponbolts[self.i] = self.weaponboltstemp
        self.weaponstyle[self.i] = self.weaponstyletemp
        self.weapongrazeamt[self.i] = self.weapongrazeamttemp
        self.weapongrazesize[self.i] = self.weapongrazesizetemp
        self.weaponchar1[self.i] = self.weaponchar1temp
        self.weaponchar2[self.i] = self.weaponchar2temp
        self.weaponchar3[self.i] = self.weaponchar3temp
        self.weaponvalue[self.i] = self.value
        self.weaponability[self.i] = self.weaponabilitytemp
        self.weaponabilityicon[self.i] = self.weaponabilityicontemp
        self.weaponicon[self.i] = self.weaponicontemp
        self.i = (self.i + 1)
        continue
    }
    break
}
