if (global.inv < 0)
{
    self.remdamage = self.damage
    self._temptarget = self.target
    for (self.ti = 0; self.ti < 3; self.ti += 1)
    {
        global.inv = -1
        self.damage = self.remdamage
        self.target = self.ti
        if ((global.hp[global.char[self.ti]] > 0) && (global.char[self.ti] != 0))
            scr_damage()
    }
    global.inv = (global.invc * 40)
    self.target = self._temptarget
}
