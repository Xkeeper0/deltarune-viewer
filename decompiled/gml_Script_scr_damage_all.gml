if (global.inv < 0)
{
    self.remdamage = self.damage
    self._temptarget = self.target
    self.ti = 0
    while(true)
    {
        if (self.ti < 3)
        {
            global.inv = -1
            self.damage = self.remdamage
            self.target = self.ti
            if (global.hp[global.char[self.ti]] > 0)
                _temp_local_var_1 = (global.char[self.ti] != 0)
            else
                _temp_local_var_1 = 0
            if _temp_local_var_1
                scr_damage()
            self.ti = (self.ti + 1)
            continue
        }
        break
    }
    global.inv = (global.invc * 40)
    self.target = self._temptarget
}
