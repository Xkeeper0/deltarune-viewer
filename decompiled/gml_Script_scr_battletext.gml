self.xx = __view_get(e__VW.XView, 0)
self.yy = __view_get(e__VW.YView, 0)
if (global.fc != 0)
    self.battlewriter = instance_create((self.xx + 30), (self.yy + 376), obj_writer)
if (global.fc == 0)
    self.battlewriter = instance_create((self.xx + 30), (self.yy + 376), obj_writer)
self.myface = instance_create((self.xx + 26), (self.yy + 380), obj_face)
with(self.battlewriter)
{
    self.dialoguer = 1
    self.facer = 1
    if (global.fc == 0)
        _temp_local_var_1 = (self.originalcharline == 33)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
        self.charline = 26
}
return self.battlewriter
