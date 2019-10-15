self.i = 0
while(true)
{
    if (self.i < 4)
    {
        scr_weaponinfo(global.charweapon[self.i])
        self.charweaponname[self.i] = self.weaponnametemp
        self.charweapondesc[self.i] = self.weapondesctemp
        self.charweaponat[self.i] = self.weaponattemp
        self.charweapondf[self.i] = self.weapondftemp
        self.charweaponmag[self.i] = self.weaponmagtemp
        self.charweaponbolts[self.i] = self.weaponboltstemp
        self.charweaponstyle[self.i] = self.weaponstyletemp
        self.charweapongrazeamt[self.i] = self.weapongrazeamttemp
        self.charweapongrazesize[self.i] = self.weapongrazesizetemp
        self.charweaponability[self.i] = self.weaponabilitytemp
        self.charweaponabilityicon[self.i] = self.weaponabilityicontemp
        self.charweaponicon[self.i] = self.weaponicontemp
        global.itemat[self.i][0] = self.weaponattemp
        global.itemdf[self.i][0] = self.weapondftemp
        global.itemmag[self.i][0] = self.weaponmagtemp
        global.itembolts[self.i][0] = self.weaponboltstemp
        global.itemgrazeamt[self.i][0] = self.weapongrazeamttemp
        global.itemgrazesize[self.i][0] = self.weapongrazesizetemp
        self.i = (self.i + 1)
        continue
    }
    break
}
