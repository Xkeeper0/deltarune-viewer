self.active = 1
self.xx = ((19 * self.f) + __view_get(e__VW.XView, 0))
self.yy = ((20 * self.f) + __view_get(e__VW.YView, 0))
self.xx = round(self.xx)
self.yy = round(self.yy)
if (self.side == 0)
{
    self.writer = instance_create((self.xx + (10 * self.f)), (self.yy - (5 * self.f)), obj_writer)
    scr_facechoice()
    with(self.writer)
    {
        self.dialoguer = 1
    }
}
if (self.side == 1)
{
    self.writer = instance_create((self.xx + (10 * self.f)), (self.yy + (150 * self.f)), obj_writer)
    self.writer.skippable = self.skippable
    scr_facechoice()
    with(self.writer)
    {
        self.dialoguer = 1
    }
}
if instance_exists(self.writer)
    _temp_local_var_1 = (global.fc != 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    with(self.writer)
    {
        self.dialoguer = 1
        if (self.originalcharline == 33)
            self.charline = 26
    }
}
