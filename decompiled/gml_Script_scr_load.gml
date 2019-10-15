snd_free_all()
self.filechoicebk = global.filechoice
scr_gamestart()
global.filechoice = self.filechoicebk
self.file = ("filech1_"@2713 + string(global.filechoice))
self.myfileid = file_text_open_read(self.file)
global.truename = file_text_read_string(self.myfileid)
file_text_readln(self.myfileid)
self.i = 0
while(true)
{
    if (self.i < 6)
    {
        global.othername[self.i] = file_text_read_string(self.myfileid)
        file_text_readln(self.myfileid)
        self.i = (self.i + 1)
        continue
    }
    break
}
global.char[0] = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.char[1] = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.char[2] = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.gold = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.xp = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.lv = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.inv = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.invc = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.darkzone = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
self.i = 0
while(true)
{
    if (self.i < 4)
    {
        global.hp[self.i] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        global.maxhp[self.i] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        global.at[self.i] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        global.df[self.i] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        global.mag[self.i] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        global.guts[self.i] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        global.charweapon[self.i] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        global.chararmor1[self.i] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        global.chararmor2[self.i] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        global.weaponstyle[self.i] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        self.q = 0
        while(true)
        {
            if (self.q < 4)
            {
                global.itemat[self.i][self.q] = file_text_read_real(self.myfileid)
                file_text_readln(self.myfileid)
                global.itemdf[self.i][self.q] = file_text_read_real(self.myfileid)
                file_text_readln(self.myfileid)
                global.itemmag[self.i][self.q] = file_text_read_real(self.myfileid)
                file_text_readln(self.myfileid)
                global.itembolts[self.i][self.q] = file_text_read_real(self.myfileid)
                file_text_readln(self.myfileid)
                global.itemgrazeamt[self.i][self.q] = file_text_read_real(self.myfileid)
                file_text_readln(self.myfileid)
                global.itemgrazesize[self.i][self.q] = file_text_read_real(self.myfileid)
                file_text_readln(self.myfileid)
                global.itemboltspeed[self.i][self.q] = file_text_read_real(self.myfileid)
                file_text_readln(self.myfileid)
                global.itemspecial[self.i][self.q] = file_text_read_real(self.myfileid)
                file_text_readln(self.myfileid)
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
                global.spell[self.i][self.j] = file_text_read_real(self.myfileid)
                file_text_readln(self.myfileid)
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
global.boltspeed = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.grazeamt = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.grazesize = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
self.j = 0
while(true)
{
    if (self.j < 13)
    {
        global.item[self.j] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        global.keyitem[self.j] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        global.weapon[self.j] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        global.armor[self.j] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        self.j = (self.j + 1)
        continue
    }
    break
}
global.tension = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.maxtension = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.lweapon = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.larmor = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.lxp = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.llv = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.lgold = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.lhp = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.lmaxhp = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.lat = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.ldf = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.lwstrength = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.ladef = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
self.i = 0
while(true)
{
    if (self.i < 8)
    {
        global.litem[self.i] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        global.phone[self.i] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
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
        global.flag[self.i] = file_text_read_real(self.myfileid)
        file_text_readln(self.myfileid)
        self.i = (self.i + 1)
        continue
    }
    break
}
global.plot = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.currentroom = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
global.time = file_text_read_real(self.myfileid)
file_text_readln(self.myfileid)
file_text_close(self.myfileid)
global.lastsavedtime = global.time
global.lastsavedlv = global.lv
file_text_close(self.myfileid)
scr_tempsave()
audio_group_set_gain(1, global.flag[15], 0)
audio_set_master_gain(0, global.flag[17])
if (global.plot >= 156)
{
    self.i = 0
    while(true)
    {
        if (self.i < 4)
        {
            global.charauto[self.i] = 0
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
self.__loadedroom = global.currentroom
if scr_dogcheck()
    self.__loadedroom = 131
room_goto(self.__loadedroom)
