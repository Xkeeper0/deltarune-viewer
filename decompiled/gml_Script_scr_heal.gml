self.abovemaxhp = 0
self.belowzero = 0
self.hltarget = global.char[self.argument0]
self._curhp = global.hp[self.hltarget]
if (global.hp[self.hltarget] <= 0)
    self.belowzero = 1
if (global.hp[self.hltarget] > global.maxhp[self.hltarget])
    self.abovemaxhp = 1
if (self.abovemaxhp == 0)
{
    global.hp[self.hltarget] = (global.hp[self.hltarget] + self.argument1)
    if (global.hp[self.hltarget] > global.maxhp[self.hltarget])
        global.hp[self.hltarget] = global.maxhp[self.hltarget]
}
if (self.belowzero == 1)
    _temp_local_var_1 = (global.hp[self.hltarget] >= 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    if (global.hp[self.hltarget] < ceil((global.maxhp[self.hltarget] / 6)))
        global.hp[self.hltarget] = ceil((global.maxhp[self.hltarget] / 6))
    scr_revive(self.argument0)
}
snd_stop(snd_power)
snd_play(snd_power)
return (global.hp[self.hltarget] - self._curhp)
