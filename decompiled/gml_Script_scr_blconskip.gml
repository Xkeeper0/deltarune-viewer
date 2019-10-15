if (self.argument0 != -1)
{
    if button1_p()
        _temp_local_var_1 = (self.talktimer > self.argument0)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
        self.talktimer = self.talkmax
    self.talktimer = (self.talktimer + 1)
    if (self.talktimer >= self.talkmax)
    {
        with(obj_writer)
        {
            instance_destroy()
        }
        global.mnfight = 2
    }
}
if (self.argument0 == -1)
{
    if (instance_exists(obj_writer) == 0)
        global.mnfight = 2
}
