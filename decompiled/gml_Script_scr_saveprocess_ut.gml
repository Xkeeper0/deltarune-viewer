global.lastsavedkills = global.kills
global.lastsavedtime = obj_time.time
global.lastsavedlv = global.lv
self.file = ("file" + string(global.filechoice))
self.myfileid = file_text_open_write(self.file)
file_text_write_string(self.myfileid, global.charname)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.lv)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.maxhp)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.maxen)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.at)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.wstrength)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.df)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.adef)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.sp)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.xp)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.gold)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.kills)
file_text_writeln(self.myfileid)
for (self.i = 0; self.i < 8; self.i += 1)
{
    file_text_write_real(self.myfileid, global.item[self.i])
    file_text_writeln(self.myfileid)
    file_text_write_real(self.myfileid, global.phone[self.i])
    file_text_writeln(self.myfileid)
}
file_text_write_real(self.myfileid, global.weapon)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.armor)
file_text_writeln(self.myfileid)
for (self.i = 0; self.i < 512; self.i += 1)
{
    file_text_write_real(self.myfileid, global.flag[self.i])
    file_text_writeln(self.myfileid)
}
file_text_write_real(self.myfileid, global.plot)
file_text_writeln(self.myfileid)
for (self.i = 0; self.i < 3; self.i += 1)
{
    file_text_write_real(self.myfileid, global.menuchoice[self.i])
    file_text_writeln(self.myfileid)
}
file_text_write_real(self.myfileid, global.currentsong)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, global.currentroom)
file_text_writeln(self.myfileid)
file_text_write_real(self.myfileid, obj_time.time)
file_text_close(self.myfileid)
