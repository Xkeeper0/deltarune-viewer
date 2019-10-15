global.lastsavedtime = global.time
global.lastsavedlv = global.lv
self.file = ("filech1_"@2713 + string(self.argument0))
self.myfileid = file_text_open_write(self.file)
file_text_write_string(self.myfileid, global.truename)
file_text_writeln(self.myfileid)
self.i = 0
while(true)
{
    if (self.i < 6)
    {
        file_text_write_string(self.myfileid, global.othername[self.i])
        file_text_writeln(self.myfileid)
        self.i = (self.i + 1)
        continue
    }
    break
}
file_text_write_real(self.myfileid, global.char[0])
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.char[1])
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.char[2])
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.gold)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.xp)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.lv)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.inv)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.invc)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.darkzone)
file_text_writeln(self.myfileid)
self.i = 0
while(true)
{
    if (self.i < 4)
    {
        file_text_write_real(self.myfileid, global.hp[self.i])
        file_text_writeln(self.myfileid)
        file_text_write_real(self.myfileid, global.maxhp[self.i])
        file_text_writeln(self.myfileid)
        file_text_write_real(self.myfileid, global.at[self.i])
        file_text_writeln(self.myfileid)
        file_text_write_real(self.myfileid, global.df[self.i])
        file_text_writeln(self.myfileid)
        file_text_write_real(self.myfileid, global.mag[self.i])
        file_text_writeln(self.myfileid)
        file_text_write_real(self.myfileid, global.guts[self.i])
        file_text_writeln(self.myfileid)
        file_text_write_real(self.myfileid, global.charweapon[self.i])
        file_text_writeln(self.myfileid)
        file_text_write_real(self.myfileid, global.chararmor1[self.i])
        file_text_writeln(self.myfileid)
        file_text_write_real(self.myfileid, global.chararmor2[self.i])
        file_text_writeln(self.myfileid)
        file_text_write_real(self.myfileid, global.weaponstyle[self.i])
        file_text_writeln(self.myfileid)
        self.q = 0
        while(true)
        {
            if (self.q < 4)
            {
                file_text_write_real(self.myfileid, global.itemat[self.i][self.q])
                file_text_writeln(self.myfileid)
                file_text_write_real(self.myfileid, global.itemdf[self.i][self.q])
                file_text_writeln(self.myfileid)
                file_text_write_real(self.myfileid, global.itemmag[self.i][self.q])
                file_text_writeln(self.myfileid)
                file_text_write_real(self.myfileid, global.itembolts[self.i][self.q])
                file_text_writeln(self.myfileid)
                file_text_write_real(self.myfileid, global.itemgrazeamt[self.i][self.q])
                file_text_writeln(self.myfileid)
                file_text_write_real(self.myfileid, global.itemgrazesize[self.i][self.q])
                file_text_writeln(self.myfileid)
                file_text_write_real(self.myfileid, global.itemboltspeed[self.i][self.q])
                file_text_writeln(self.myfileid)
                file_text_write_real(self.myfileid, global.itemspecial[self.i][self.q])
                file_text_writeln(self.myfileid)
                self.q = (self.q + 1)
                continue
            }
            break
        }
        self.j = 0
        while(true)
        {
            if (self.j < 12)
            {
                file_text_write_real(self.myfileid, global.spell[self.i][self.j])
                file_text_writeln(self.myfileid)
                self.j = (self.j + 1)
                continue
            }
            break
        }
        self.i = (self.i + 1)
        continue
    }
    break
}
file_text_write_real(self.myfileid, global.boltspeed)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.grazeamt)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.grazesize)
file_text_writeln(self.myfileid)
self.j = 0
while(true)
{
    if (self.j < 13)
    {
        file_text_write_real(self.myfileid, global.item[self.j])
        file_text_writeln(self.myfileid)
        file_text_write_real(self.myfileid, global.keyitem[self.j])
        file_text_writeln(self.myfileid)
        file_text_write_real(self.myfileid, global.weapon[self.j])
        file_text_writeln(self.myfileid)
        file_text_write_real(self.myfileid, global.armor[self.j])
        file_text_writeln(self.myfileid)
        self.j = (self.j + 1)
        continue
    }
    break
}
file_text_write_real(self.myfileid, global.tension)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.maxtension)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.lweapon)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.larmor)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.lxp)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.llv)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.lgold)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.lhp)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.lmaxhp)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.lat)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.ldf)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.lwstrength)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.ladef)
file_text_writeln(self.myfileid)
self.i = 0
while(true)
{
    if (self.i < 8)
    {
        file_text_write_real(self.myfileid, global.litem[self.i])
        file_text_writeln(self.myfileid)
        file_text_write_real(self.myfileid, global.phone[self.i])
        file_text_writeln(self.myfileid)
        self.i = (self.i + 1)
        continue
    }
    break
}
self.i = 0
while(true)
{
    if (self.i < 9999)
    {
        file_text_write_real(self.myfileid, global.flag[self.i])
        file_text_writeln(self.myfileid)
        self.i = (self.i + 1)
        continue
    }
    break
}
file_text_write_real(self.myfileid, global.plot)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.currentroom)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.time)
file_text_close(self.myfileid)
