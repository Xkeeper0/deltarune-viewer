global.litem[8] = self.argument1
for (self.i = self.argument0; self.i < 8; self.i += 1)
    global.litem[self.i] = global.litem[(self.i + 1)]
script_execute(scr_litemname)
