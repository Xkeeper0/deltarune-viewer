global.fc = 0
global.msc = self.argument0
if (self.argument1 != "x"@37)
    global.msg[0] = self.argument1
if (self.argument2 != 0)
    global.fc = self.argument2
global.typer = 5
if (self.argument3 != 0)
    global.typer = self.argument3
instance_create(0, 0, obj_dialoguer)
