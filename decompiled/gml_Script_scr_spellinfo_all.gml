for (self.j = 0; self.j < 4; self.j += 1)
{
    for (self.i = 0; self.i < 12; self.i += 1)
    {
        self.spellid = global.spell[self.j, self.i]
        scr_spellinfo(self.spellid)
        global.spellname[self.j, self.i] = self.spellname
        global.spellnameb[self.j, self.i] = self.spellnameb
        global.spelldescb[self.j, self.i] = self.spelldescb
        global.spelldesc[self.j, self.i] = self.spelldesc
        global.spellcost[self.j, self.i] = self.cost
        global.spellusable[self.j, self.i] = self.spellusable
        global.spelltarget[self.j, self.i] = self.spelltarget
    }
}
